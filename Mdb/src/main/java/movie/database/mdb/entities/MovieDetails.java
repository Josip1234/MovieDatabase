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
}
