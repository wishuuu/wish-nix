make:
	sudo nixos-rebuild switch --flake .#ovsoft
	nix shell nixpkgs#home-manager
	home-manager switch --flake .#user@ovsoft
