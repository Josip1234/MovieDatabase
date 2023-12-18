package movie.database.mdb;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import com.github.javafaker.Faker;

import movie.database.mdb.entities.Genre;
import movie.database.mdb.entities.MovieAndTv;
import movie.database.mdb.entities.MovieDetails;

public class MovieTestMain {

	public static void main(String[] args) {
		//we need some movie or tv show name we want to watch or we have watching in the past
		//need some random id, we will use java faker to generate it
		Faker faker = new Faker();
		MovieAndTv movieAndTv = new MovieAndTv(faker.random().nextInt(0, 100000), "Bratz the movie / Sminkerice");
		//need to generate list of generes
		List<Genre> genres = new ArrayList<Genre>();
		//create new genre
		Genre genre = new Genre(faker.random().nextInt(0, 100000), "Comedy");
		//add it to a list
		genres.add(genre);
		//create new genre
		genre = new Genre(faker.random().nextInt(0, 100000), "Family");
		genres.add(genre);
		genre = new Genre(faker.random().nextInt(0, 100000), "Music");
		genres.add(genre);
		//add some movie details
		//we need some list of actors first 
		//need a new entity actors

	}

}
