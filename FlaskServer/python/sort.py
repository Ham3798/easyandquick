import numpy as np 
import pandas as pd
import json


def recommend():
    meta = pd.read_csv('.\\metadata.csv')

    meta.head()

    meta = meta[['id', 'title', 'genres']]
    meta = meta.rename(columns={'id':'problemid'})
    meta.head()

    ratings = pd.read_csv('.\\rating.csv')
    ratings = ratings[['userId', 'problemid', 'rating']]
    ratings.head()

    ratings.describe()

    meta.problemid = pd.to_numeric(meta.problemid, errors='coerce')
    ratings.problemid = pd.to_numeric(ratings.problemid, errors='coerce')

    def parse_genres(genres_str):
        genres = json.loads(genres_str.replace('\'', '"'))
        
        genres_list = []
        for g in genres:
            genres_list.append(g['name'])

        return genres_list

    meta['genres'] = meta['genres'].apply(parse_genres)

    meta.head()

    data = pd.merge(ratings, meta, on='problemid', how='inner')

    data.head()

    matrix = data.pivot_table(index='userId', columns='title', values='rating')

    matrix.head(20)

    GENRE_WEIGHT = 0.15

    def pearsonR(s1, s2):
        s1_c = s1 - s1.mean()
        s2_c = s2 - s2.mean()
        return np.sum(s1_c * s2_c) / np.sqrt(np.sum(s1_c ** 2) * np.sum(s2_c ** 2))

    def recommend(input_movie, matrix, n, similar_genre=True):
        input_genres = meta[meta['title'] == input_movie]['genres'].iloc(0)[0]

        result = []
        for title in matrix.columns:
            if title == input_movie:
                continue

            # rating comparison
            cor = pearsonR(matrix[input_movie], matrix[title])
            
            # genre comparison
            if similar_genre and len(input_genres) > 0:
                temp_genres = meta[meta['title'] == title]['genres'].iloc(0)[0]

                same_count = np.sum(np.isin(input_genres, temp_genres))
                cor += (GENRE_WEIGHT * same_count)
            
            if np.isnan(cor):
                continue
            else:
                result.append((title, '{:.2f}'.format(cor), temp_genres))
                
        result.sort(key=lambda r: r[1], reverse=True)

        return result[:n]

    recommend_result = recommend('one', matrix, 10, similar_genre=True)

    title_list = list()
    for i in recommend_result:
        title_list.append(i[0])
    return title_list