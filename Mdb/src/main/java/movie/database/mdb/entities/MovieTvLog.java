package movie.database.mdb.entities;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MovieTvLog extends MovieAndTv {
private int id;
private String lastKnownDateOfWatching;
private List<String> watchHistory;
private int numberOfWatching;
}
