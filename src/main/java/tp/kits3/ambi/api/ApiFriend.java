package tp.kits3.ambi.api;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import tp.kits3.ambi.service.impl.FriendServiceImpl;
import tp.kits3.ambi.vo.Friend;

@RestController
public class ApiFriend {
	@Autowired
	FriendServiceImpl friendService;
	@GetMapping("/api/pending/accept/{id}")
	public Object acceptFriend(@PathVariable("id") int user2Id) {
		Friend fr;
		try {
			try {
				 fr = friendService.getIdFriendByTwoUsersId(2, user2Id);
				 fr.setReId(2);
					friendService.updateFriend(fr);
			} catch (Exception e) {
				fr = friendService.getIdFriendByTwoUsersId(user2Id, 2);
				fr.setReId(2);
				friendService.updateFriend(fr);
			}
			
			return new ResponseEntity<>(HttpStatus.OK);
		} catch (Exception e) {
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
	}
	@GetMapping("/api/pending/deny")
	public String denyFriend(Model model) {

		return "";
	}
}