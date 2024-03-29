import "owned.sol";

contract StaffPicks is owned {

  function register(address _campaignAddress) onlyowner {
    activePicks[_campaignAddress] = true;
    pickedCampaigns.push(_campaignAddress);
  }

  function deactivate(address _campaignAddress) onlyowner {
    activePicks[_campaignAddress] = false;
  }

  mapping(address => bool) public activePicks;
  address[] public pickedCampaigns;
}
