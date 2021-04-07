const MyToken = artifacts.require("Tkn");
const NewCrowdsale = artifacts.require("Crd");

module.exports = async function (deployer, network, accounts) {

  await deployer.deploy(MyToken, 'TKTokens', 'TKTKN', '3000000000000000000000000'); // # plus 18 zeros

  const token = await MyToken.deployed();

  //token.transfer(accounts[0], await thetoken.totalSupply())

  await deployer.deploy(NewCrowdsale, '37500', accounts[0], token.address, accounts[0], '80000000000000000000');
  
  const crowdsale = await NewCrowdsale.deployed();

  token.approve(crowdsale.address, '3000000000000000000000000'); // # plus 18 zeros

};

//first crowdsale 80,000 eth
//second crowdsale 133.333 eth
//third crowdsale 320 eth

//80000000000000000000
//133333333333333333333
//320000000000000000000
