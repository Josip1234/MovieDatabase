package movie.database.mdb.entities;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MovieDetails extends MovieAndTv {
private int id;
private String year;
private List<Actors> actors;
private String director;
private String movieStuff;
private String description;
public MovieDetails(int id, String movieTvName, int id2, String year, List<Actors> actors, String director,
		String movieStuff, String description) {
	super(id, movieTvName);
	id = id2;
	this.year = year;
	this.actors = actors;
	this.director = director;
	this.movieStuff = movieStuff;
	this.description = description;
}



}
