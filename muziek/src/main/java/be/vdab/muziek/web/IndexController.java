package be.vdab.muziek.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import be.vdab.muziek.services.AlbumService;

@Controller
@RequestMapping("/")
class IndexController {
	private static final String VIEW = "index";
	private final AlbumService albumService;
	
	public IndexController(AlbumService albumService) {
		this.albumService = albumService;
	}


	@GetMapping
	ModelAndView albums() {
		return new ModelAndView(VIEW, "albums", albumService.findAll());
	}

	

}
