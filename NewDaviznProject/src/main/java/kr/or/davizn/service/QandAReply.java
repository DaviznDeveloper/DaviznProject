package kr.or.davizn.service;

public class QandAReply {
	private int replynum; //댓글 번호
	private String replycontent;//댓글 내용
	private String userid;//유저 id
	private int boardseq;//fk qndboard
	private int seq_pk;//pk
	private int ref;//
	private int depth;//
	private int step;//
	
	
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public int getDepth() {
		return depth;
	}
	public void setDepth(int depth) {
		this.depth = depth;
	}
	public int getStep() {
		return step;
	}
	public void setStep(int step) {
		this.step = step;
	}
	public int getReplynum() {
		return replynum;
	}
	public void setReplynum(int replynum) {
		this.replynum = replynum;
	}
	public String getReplycontent() {
		return replycontent;
	}
	public void setReplycontent(String replycontent) {
		this.replycontent = replycontent;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getBoardseq() {
		return boardseq;
	}
	public void setBoardseq(int boardseq) {
		this.boardseq = boardseq;
	}
	public int getSeq_pk() {
		return seq_pk;
	}
	public void setSeq_pk(int seq_pk) {
		this.seq_pk = seq_pk;
	}
	@Override
	public String toString() {
		return "QandAReply [replynum=" + replynum + ", replycontent=" + replycontent + ", userid=" + userid
				+ ", boardseq=" + boardseq + ", seq_pk=" + seq_pk + ", ref=" + ref + ", depth=" + depth + ", step="
				+ step + "]";
	}
	

	
	
}
