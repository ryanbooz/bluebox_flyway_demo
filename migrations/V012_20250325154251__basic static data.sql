-- Script generated by Redgate Compare v1.28.0.25641
SET check_function_bodies = false;


DO language plpgsql $$BEGIN RAISE NOTICE 'Altering bluebox.release_type...';END$$;
INSERT INTO bluebox.release_type(release_type_id, release_type) VALUES (1, 'Premiere'),
(2, 'Theatrical (limited)'),
(3, 'Theatrical'),
(4, 'Digital'),
(5, 'Physical'),
(6, 'TV')
ON CONFLICT (release_type_id) DO UPDATE SET release_type = EXCLUDED.release_type;


DO language plpgsql $$BEGIN RAISE NOTICE 'Altering bluebox.film_genre...';END$$;
INSERT INTO bluebox.film_genre(genre_id, name) VALUES (12, 'Adventure'),
(14, 'Fantasy'),
(16, 'Animation'),
(18, 'Drama'),
(27, 'Horror'),
(28, 'Action'),
(35, 'Comedy'),
(36, 'History'),
(37, 'Western'),
(53, 'Thriller'),
(80, 'Crime'),
(99, 'Documentary'),
(878, 'Science Fiction'),
(9648, 'Mystery'),
(10402, 'Music'),
(10749, 'Romance'),
(10751, 'Family'),
(10752, 'War'),
(10770, 'TV Movie'),
(20000, 'Sci-Fi'),
(50000, 'CodeMash')
ON CONFLICT (genre_id) DO UPDATE SET name = EXCLUDED.name;

SET check_function_bodies = true;
