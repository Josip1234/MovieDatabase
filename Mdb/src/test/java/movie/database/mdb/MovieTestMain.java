package movie.database.mdb;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import com.github.javafaker.Faker;

import movie.database.mdb.entities.Actors;
import movie.database.mdb.entities.Genre;
import movie.database.mdb.entities.MovieAndTv;
import movie.database.mdb.entities.MovieDetails;
import movie.database.mdb.entities.MovieTvLog;

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
		//let 's add some actors we need some list with their details    
		//we will update the list later when we need to add more actors for one movie
		//this list contains only actors for this one movie!!!
		List<Actors> actors = new ArrayList<Actors>();
		actors.add(new Actors(faker.random().nextInt(0, 100000), "Skyler Shaye", "October 14, 1986", " Los Angeles, California, USA", "Birth name Skyler Anna Shuster Nickname Sky Height 1.63 m", "Skyler Shaye was born on October 14, 1986 in Los Angeles, California, USA. She is an actress, known for Uvod u anatomiju (2005), Sminkerice (2007) and Superbebe genijalci 2 (2004). She has been married to Christian Lopez since October 10, 2022. Family Spouse Christian Lopez(October 10, 2022 - present) Parents Bonnie Paul Relatives Jon Voight(Grandparent) Dorothy Koster Paul(Grandparent) Stuart Paul(Aunt or Uncle) Steven Paul(Aunt or Uncle) Trivia Skyler's father is entrepreneur Stanley Shuster, owner of \"The Grand Havana Room\". He also owned \"Fat Burger\", and Skyler's grandfather is the original owner of \"Irvine Meadows Amphitheatre\" and \"Lion Country Safari\", which he later on turned into \"Wild Rivers\". Goddaughter of Jon Voight. She is of Russian Jewish descent. Niece of Stuart Paul and Steven Paul."));
		actors.add(new Actors(faker.random().nextInt(0, 100000), "Nathalia Ramos", "July 3, 1992", "Madrid, Spain", "Nickname Nat Height 1.63 m", "Nathalia Ramos was born in Madrid, Spain, to an Australian mother, Kate Cohen, and a Spanish father, Juan Carlos Ramos. Fluent in both English and Spanish, she lived in Madrid, Melbourne, and Miami before finally settling in LA at the age of 14. She played Hope Loblaw on the hit show Arrested Development. She is most known for her leading roles in Bratz and Nickelodeon's House of Anubis, which won her a Kids Choice Award. Nathalia continues to act in film and television and graduated from USC with a degree in Political Science in 2018. Family Parents Iván Kate Cohen Trivia She has triple citizenship: Spain, Australia, and USA. She speaks Vietnamese. Her mother is Australian, from a Sephardi Jewish family. Her father is Spanish. Moved from Madrid to Melbourne at two years old, then relocated to Miami Beach, Florida, at age four, where she still lives. One younger brother, Michael. Daughter of Spanish singer Iván. Attended Miami Beach Senior High School. She is a Political Science student at USC."));
        MovieDetails details = new MovieDetails(faker.random().nextInt(0, 100000), "United States August 3, 2007 Israel August 9, 2007 Netherlands August 9, 2007 Belgium August 15, 2007 United Kingdom August 17, 2007 Ireland August 17, 2007 Spain August 24, 2007 Puerto Rico August 30, 2007 Turkey September 7, 2007 Iceland September 14, 2007 Mexico September 14, 2007 Philippines September 19, 2007 Australia September 20, 2007 New Zealand September 20, 2007 Brazil October 12, 2007 Portugal October 25, 2007 Russia November 1, 2007 Singapore November 15, 2007 Colombia November 16, 2007 Ukraine November 22, 2007 Canada November 27, 2007(DVD premiere) Argentina February 14, 2008 Panama March 7, 2008 Italy June 6, 2008 Hungary July 29, 2008(DVD premiere) Sweden August 27, 2008(DVD premiere) Finland September 12, 2008(DVD premiere) France July 1, 2009(DVD premiere)", actors, "Sean McNamara", "Writers Susan Estelle JansenAdam De La PeñaDavid Eilenberg Stars Skyler ShayeJanel ParrishLogan Browning","During their first year of high school, four best girlfriends face off against the domineering student body President, who wants to split them up into different social cliques.");
		//we have added some movie details, need to add some records in movie tv log, we don't need list
        MovieTvLog log = new MovieTvLog(faker.random().nextInt(0, 100000),"Unknown","Unknown",0);
        //we need to put all of this togeather to display on user's output
        //print movie name and genre first
        //since we are pulling genres names from list we need to know what id is connected to what genre.
        //need to set movie name to genre, to get movie name from superclass
        genre.setMovieTvName(movieAndTv.getMovieTvName());
        System.out.println("Movie: "+genre.getMovieTvName()+" Genre: "+genres.get(0).getGenreName()+", "+genres.get(1).getGenreName()+", "+genres.get(2).getGenreName()+" ");
        //need to print movie details need to set movie name also 
        details.setMovieTvName(movieAndTv.getMovieTvName());
        System.out.println("Year: "+details.getYear()+" Actors:"+ actors.get(0).getFirstLastName()+" , "+actors.get(1).getFirstLastName()+" Director:"+ details.getDirector()+" Movie stuff:"+details.getMovieStuff()+" Description: "+ details.getDescription());
        //optional we need some details about actors.
        //one actor has one element so we dont need list we need only index of list who have a connection for this one movie.
        //what movie, what actor this will be shown in function
        Actors actors2 = new Actors(movieAndTv.getId(), movieAndTv.getMovieTvName(), actors.get(1).getId(), actors.get(1).getFirstLastName(),  actors.get(1).getDateOfBirth(),  actors.get(1).getPlaceOfBirth(), actors.get(1).getAbout(), actors.get(1).getActingHistory());
        //get movie tv log of watching of this one movie
        System.out.println("Movie log:" + log.toString());
        //print actor's details
        System.out.println("Actor details:"+ actors2.toString());
        
		

	}

}
