import { BaseContract } from 'ethers';

export const getContractFunction = async (contract: BaseContract) => {
  return await contract.interface.fragments.filter((fragment) => {
    return fragment.type === 'function';
  });
};
