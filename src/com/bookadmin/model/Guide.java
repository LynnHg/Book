package com.bookadmin.model;

public class Guide {
	 private int guideid;
	 private String guideTime;
	 private String guideText;
	 private int guideState;
		public Guide(){}
	 public int getGuideid() {
			return guideid;
		}
		public void setGuideid(int guideid) {
			this.guideid = guideid;
		}
		public String getGuideTime() {
			return guideTime;
		}
		public void setGuideTime(String guideTime) {
			this.guideTime = guideTime;
		}
		public String getGuideText() {
			return guideText;
		}
		public void setGuideText(String guideText) {
			this.guideText = guideText;
		}
		public int getGuideState() {
			return guideState;
		}
		public void setGuideState(int guideState) {
			this.guideState = guideState;
		}
	
}
