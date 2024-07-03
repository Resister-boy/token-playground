import { ContractFactory, Signer, BaseContract } from 'ethers';
import { ethers } from 'hardhat';
import { loadFixture } from '@nomicfoundation/hardhat-network-helpers';
import { getContractFunction } from '@/utils/contractUtils';

describe('Variable Test', () => {
  let contract: BaseContract;
  let deployer: Signer;

  async function getTestFixture() {
    const [_deployer] = await ethers.getSigners();
    console.log('Deployer Address:', _deployer.address);

    deployer = _deployer;
    const ContracFactory: ContractFactory =
      await ethers.getContractFactory('Variable');
    contract = await ContracFactory.connect(deployer).deploy();

    return { contract, deployer };
  }
  describe('Contract Deploy', async () => {
    it('Should deploy the contract', async () => {
      const { deployer, contract } = await loadFixture(getTestFixture);
      console.log(await getContractFunction(contract));
    });
  });
});
