package pojo;

import java.util.Date;

public class StoragePojo {
	private String userId;
	private String fileName;
	private String navPath;
	private String filePath;
	private Date createDate;
	private String type;
	private int id;	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getNavPath() {
		return navPath;
	}
	public void setNavPath(String navPath) {
		this.navPath = navPath;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public StoragePojo(String userId, String fileName, String navPath, String filePath, Date createDate, String type,int id) {
		this.userId = userId;
		this.fileName = fileName;
		this.navPath = navPath;
		this.filePath = filePath;
		this.createDate = createDate;
		this.type = type;
		this.id= id; 
	}
	
	public StoragePojo() {
		
	}
	
}
