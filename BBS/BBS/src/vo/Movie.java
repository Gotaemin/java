package vo;

public class Movie {
	private String title;
	private int visitors;
	private String actor;
	private String image;
	
	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Movie() {
		
	}
	
	public Movie(String title,int visitors,String actor,String image) {
		this.title = title;
		this.visitors = visitors;
		this.actor = actor;
		this.image = image;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getVisitors() {
		return visitors;
	}

	public void setVisitors(int visitors) {
		this.visitors = visitors;
	}

	public String getActor() {
		return actor;
	}

	public void setActor(String actor) {
		this.actor = actor;
	}
}
