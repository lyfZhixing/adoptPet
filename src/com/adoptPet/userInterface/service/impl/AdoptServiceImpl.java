package com.adoptPet.userInterface.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.adoptPet.userInterface.entity.Adoptinfo;
import com.adoptPet.userInterface.entity.AdoptinfoEx;
import com.adoptPet.userInterface.entity.ApplyInfoEx;
import com.adoptPet.userInterface.entity.QueryMyApply;
import com.adoptPet.userInterface.mapper.AdoptinfoMapperEx;
import com.adoptPet.userInterface.mapper.ApplyinfoMapperEx;
import com.adoptPet.userInterface.service.AdoptService;

@Service
public class AdoptServiceImpl implements AdoptService {

	@Autowired
	private AdoptinfoMapperEx adoptinfoMapperEx;
	@Autowired
	private ApplyinfoMapperEx applyinfoMapperEx;
	@Override
	public int saveAdopt(Adoptinfo t) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateAdopt(Adoptinfo t) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Adoptinfo> findAdoptByStatus(int status) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Adoptinfo> findAdoptByUname(String uName) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Adoptinfo> findAdoptByTypeOrAddress(Integer type, String address) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertAdopt(String uname,String type,String title,String detial,String address,String question1,String question2,String question3) throws Exception {
		
		Adoptinfo adoptInfo = new Adoptinfo();
		adoptInfo.setSerialno(System.currentTimeMillis()+uname);
		adoptInfo.setUname(uname);
		adoptInfo.setType(type);
		adoptInfo.setTitle(title);
		adoptInfo.setDescribes(detial);
		adoptInfo.setAddress(address);
		adoptInfo.setQuestion1(question1);
		adoptInfo.setQuestion2(question2);
		adoptInfo.setQuestion3(question3);
		adoptInfo.setAdostatus(0);//0待审核 1发布中2审核不通过3已下架
		adoptInfo.setPublishtime(new Date());
		
		return adoptinfoMapperEx.insert(adoptInfo);
	}

	@Override
	public List<AdoptinfoEx> queryMyPublish(String uname) throws Exception {
		List<AdoptinfoEx> adoptinfos1 = new ArrayList<>();
		List<AdoptinfoEx> adoptinfos = adoptinfoMapperEx.queryByUname(uname);
		
		for(AdoptinfoEx adoptinfo : adoptinfos){
			int count = adoptinfoMapperEx.queryCount(adoptinfo.getSerialno()).size();
			String address = adoptinfo.getAddress();
			String[] addresses = address.split("&&");
			String newAddress = addresses[0]+"省(直辖市/自治区/特别行政区)   "+addresses[1]+"市   "+addresses[2]+"区   "+addresses[3];
			adoptinfo.setAddress(newAddress);
			adoptinfo.setCount(count);
			adoptinfos1.add(adoptinfo);
		}
		return adoptinfos1;
	}

	@Override
	public List<ApplyInfoEx> querypubApplys(List<AdoptinfoEx> myPublishs) throws Exception {
		
		List<ApplyInfoEx> pubApplys = new ArrayList<>();
		for(Adoptinfo myPublish : myPublishs){
			String serialno = myPublish.getSerialno();
			List<ApplyInfoEx> pubApply = adoptinfoMapperEx.querypubApplys(serialno);
//			int count = pubApply.size();
//			for(ApplyInfoEx pubApply1 : pubApply){
//				pubApply1.setCount(count);
//			}
			pubApplys.addAll(pubApply);
		}
		return pubApplys;
		
	}

	@Override
	public List<AdoptinfoEx> queryNewPublish() throws Exception {
		List<AdoptinfoEx> adoptinfos1 = new ArrayList<>();
		List<AdoptinfoEx> adoptinfos = adoptinfoMapperEx.queryNewPublish();
		for(AdoptinfoEx adoptinfo : adoptinfos){
			int count = adoptinfoMapperEx.queryCount(adoptinfo.getSerialno()).size();
			adoptinfo.setCount(count);
			adoptinfos1.add(adoptinfo);
		}
		return adoptinfos;
	}

	@Override
	public List<AdoptinfoEx> queryTypePublish(String type) throws Exception {
		List<AdoptinfoEx> adoptinfos1 = new ArrayList<>();
		List<AdoptinfoEx> adoptinfos = adoptinfoMapperEx.queryTypePublish(type);
		for(AdoptinfoEx adoptinfo : adoptinfos){
			int count = adoptinfoMapperEx.queryCount(adoptinfo.getSerialno()).size();
			adoptinfo.setCount(count);
			adoptinfos1.add(adoptinfo);
		}
		return adoptinfos;
	}

	@Override
	public AdoptinfoEx queryAdoptBySerialno(String serialno)throws Exception {
		AdoptinfoEx adoptinfo = adoptinfoMapperEx.queryAdoptBySerialno(serialno);
		String address = adoptinfo.getAddress();
		String[] addresses = address.split("&&");
		String newAddress = addresses[0]+"省(直辖市/自治区/特别行政区)   "+addresses[1]+"市   "+addresses[2]+"区   "+addresses[3];
		adoptinfo.setAddress(newAddress);
		return adoptinfo;
	}

	@Override
	public int apply( String serialno2,String uname, String answer1, String answer2, String answer3) throws Exception {

		int result = -1;
		ApplyInfoEx apply = new ApplyInfoEx();
		apply.setSerialno(System.currentTimeMillis()+uname);
		apply.setSerialno2(serialno2);
		apply.setUname(uname);
		apply.setAnswer1(answer1);
		apply.setAnswer2(answer2);
		apply.setAnswer3(answer3);
		apply.setApplytime(new Date());
		apply.setAppstatus(0);//0等待查看，1申请通过，2申请不同过
		ApplyInfoEx apply2 = new ApplyInfoEx();
		apply2 = applyinfoMapperEx.queryApplyByserialno2Uname(apply);
		if( apply2 == null){
			result = applyinfoMapperEx.insert(apply);
		}
		return result ;
	}

	@Override
	public int updateStatuses(String serialno, String serialno2)throws Exception {
		int result = -1;
		ApplyInfoEx apply = new ApplyInfoEx();
		apply.setSerialno(serialno);
		apply.setSerialno2(serialno2);
		int result1 =  applyinfoMapperEx.updateStatus(apply);
		int result2 =  adoptinfoMapperEx.updateStatus(apply);
		result = result1 * result2;
		return result;
	}

	@Override
	public List<QueryMyApply> queryMyApplys(String uname) throws Exception {
		
		
		return applyinfoMapperEx.queryMyApplys(uname);
	}

}
