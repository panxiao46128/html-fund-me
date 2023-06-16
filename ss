Previous attacks on smart contracts, such as the infamous DAO Hack, and even more recent hacks like the Ronin and Wormhole attacks, have demonstrated that it is incredibly challenging to write correct and secure contracts. For this reason, obtaining a smart contract security audit is a necessary part of the Web3 development lifecycle. 

Audits might require considerable investment in resources, but the benefits to the long-term security of your protocol and the safety of users are understated. An audit also helps in gaining the trust of prospective users and protecting reputations of developers. 

However, commissioning an audit is only the first step; you must prepare adequately for the audit to make the most of your investment. To this end, we have prepared a list of preliminary tasks that should be completed before hiring an auditing firm to conduct a code assessment for your smart contracts. 

Create documentation for smart contract systems 
Documenting your smart contract systems is a prerequisite for a successful audit. Good documentation helps auditors understand your project’s inner workings and assist in threat modeling as well as in identifying potential vulnerabilities. With access to quality documentation, auditors spend less time on understanding your code and can start inspecting it for bugs early. 

Smart contract documentation should describe, in plain English, different architectural components and the general workflow of the system. Some questions to consider when creating documentation for decentralized protocols include:

What problem does the system solve and how does it go about solving it? 
You should create a plain English specification that explains the intended functionality of your application. For example, you may highlight the features the system provides and how users will access and use those features. An ideal way to present this information is to combine a high-level description of the system with a discussion of low-level components. 

Your smart contract documentation should also identify the various design decisions, tradeoffs, and assumptions made during development, especially if they concern critical components. If anything, providing a rationale for these decisions can also aid auditors’ understanding of your smart contract(s).

What properties and invariants should be maintained under execution? 
Your contract will likely have invariants—statements about the contract’s state or execution that must always hold for it to remain secure. Identifying these invariants can help auditors with brainstorming user operations that could violate security properties and result in exploits. 

Your description of contract invariants may touch on which contract states and user actions are allowed. Here, you could describe the various states a contract can be in at different points in time (e.g., paused or active) and explain what it should or should not do in each state. 

Are there any cross-contract dependencies? 
Many decentralized protocols often split functionalities across different smart contracts instead of using a monolithic structure. While this helps with efficiency, it is important to evaluate cross-contract interactions and their impact on the system’s operation and safety. 

If your project adopts this modular approach, you’ll want to describe dependencies between different components of the system. The same advice applies if your contract integrates with existing protocols or interfaces with on-chain contracts at runtime.  

What are the various controls in the system? 
Given that public smart contract functions can be called by anyone, access control is important for protecting contract functionalities against abuse. But access control mechanisms require correct implementation to remain efficient and secure.

Highlighting different user roles in the system and their powers can make it easier for auditors to reason about the security of the smart contract system. You can also discuss the different safeguards (such as function modifiers) put in place to restrict execution of contract operations. 

Tip: Use Slither printers to quickly generate a human-readable summary of important information for smart contracts. Slither printers can display control flow graphs for functions, inheritance trees, function summaries, variable ordering, and more. Also, check out the following examples to see what what high-quality smart contract documentation looks like in practice: 

RocketPool: https://github.com/rocket-pool/rocketpool/tree/master/docs 
Uniswap: https://github.com/Uniswap/docs/tree/main/docs 
Write clean Solidity code
Writing clean code reduces the likelihood of errors in a smart contract, while drastically reducing the difficulty for auditors analyzing the codebase. A minimum requirement in this regard is to make sure that your code is intelligible, easy to comprehend, and well-formatted. Some of the following tips are useful for writing clean contracts.

Use regular naming conventions 
The naming of functions, contracts, and variables should be kept simple and consistent throughout the codebase. If you use unfamiliar terms in some sections, consider creating a glossary that explains the meaning of those terms. 

Fix compiler warnings and run a linter
The Solidity compiler performs some static analysis on a contract’s source code and output warnings related to syntax errors, use of unsafe constructs, and violations of programming standards, among others. Ensure to fix any warnings issued by the compiler, except if you have a good reason to do the opposite. 

Running your source code through a linter is another way of enforcing formatting rules. Linters like Ethlint can catch minor formatting errors in smart contracts and improve code quality. 

Tip: The Solidity Style Guide provides a list of suggestions to keep formatting and style in contract code consistent and organized. 

Use inline comments 
Solidity developers can provide rich documentation for elements in code such as functions, variables, and events using inline comments. The Ethereum Natural Language Format (NatSpec) provides easy-to-use templates for using comments in your contract’s code. 

Comments are useful for explaining what different sections of the code do to end-users and other developers who might want to integrate with your protocol later. More importantly, failing to clarify the intent behind elements in your contract code (using comments) forces auditors to spend more time on trying to understand it. This only increases the scope of the audit and drives up costs for developers. 

Tip: Use solidity-docgen to automatically generate external documentation for your Solidity project based on inline comments. 

Prioritize simplicity 
Complex systems fail in complex ways, which is why keeping things simple is important when writing code for smart contracts. Moreover, reducing unnecessary complexity in a codebase can make it easier for auditors to reason about its correctness. 

This brings us to another point: always use existing libraries and standards where possible. Creating custom logic may seem ideal, but doing so risks introducing unintended vulnerabilities and increases cognitive overhead for auditors. 

One suggestion is to consider integrating OpenZeppelin Contracts and finalized ERCs into your development toolbox. As open-source components, these libraries and standards have been extensively used, audited, and tested by the developer community and are also familiar to most auditors. 

Identify the scope of smart contract audits
Although discussions around the scope of an audit typically happen when negotiating terms with auditors, you can do it well in advance to minimize back-and-forth. Identifying the scope of the audit in advance can be beneficial for many reasons. 

For example, it ensures auditors don’t take on tasks outside their purview and aids in calculating accurate estimates regarding the expected compensation and delivery timelines. It may also reduce the delay auditors face before starting work on your project. 

Tip: Create an audit scope document to share with auditors as part of your smart contract audit checklist. This document should include information such as the repository link, branch, and paths to the contract(s) commissioned for auditing. The latter part may be omitted if all contracts in a repo are due for auditing. 

Develop a robust plan for testing your smart contracts 
Test-driven development is important for establishing functional security in smart contracts. Also, running tests on your smart contracts helps catch minor errors (“low-hanging fruit”, so to speak) and frees auditors to focus on finding more critical vulnerabilities. You may find the following information useful when planning tests:

Unit tests: Run unit tests to validate correct execution of every function in your smart contracts. Truffle, Foundry, and Hardhat are some tools that provide unit testing capabilities. 

Property-based analysis: Run advanced, property-based analyses to discover errors missed during unit testing. Diligence Fuzzing, Mythril, Brownie, and Manticore are some recommended tools for verifying arbitrary properties in smart contracts. 

Integration tests: Run integration tests to verify that different components of your system work together without any errors. Integration testing is useful for testing interactions between modular contracts in the same system or interactions with other on-chain contracts. 

Code coverage: Your tests should (ideally) achieve 90-100% code coverage. High code coverage doesn’t signal the absence of bugs, but it can give auditors some assurance of the effort put into testing. 

Structuring tests: A good test suite should have a well-organized and easy-to-understand structure. You can read the MolochDAO guide on structuring unit tests for contracts to get started. 

Another piece of advice for structuring tests is to go beyond “happy path” tests and run negative tests (i.e., tests that should fail). Ensure that negative tests fail and for the right reasons. This is important, as many exploits often involve attackers triggering unexpected execution in smart contracts. 

The structure of a test suite can also help auditors understand the intended behavior of a particular contract from the developer’s perspective. More so, it can suggest new ideas for testing edge cases—for example, an auditor may uncover vulnerabilities by calling functions not covered during regular tests. 

Halt active development 
Auditors advise “freezing code” (halting active development) before commissioning an audit since auditing an evolving codebase can result in wasted effort. Changes introduced to a codebase during an audit can have second-order effects on other structural components. In some cases, this may introduce delays in auditing or necessitate a re-audit of the entire system. 

If you must continue development on certain parts of the codebase, provide auditors with a branch outside the scope of new changes. Working on a static codebase makes life easier for audit teams and simplifies the task of evaluating the scope of future audits.

You may even find audit firms with stricter requirements around halting development. As an example, Diligence auditors don’t allow changes to scope once an audit has started. Likewise, most audit firms require a frozen commit hash for the review and ask for no changes to be made during the review period. 

Budget time and manpower to fix smart contract vulnerabilities 
Audits typically conclude with the auditor providing a report classifying weaknesses and vulnerabilities in a smart contract system (based on severity and impact). It is important to address issues identified in a smart contract audit before deploying on mainnet. Still, it isn’t rare to find teams failing to fix vulnerabilities identified by auditors before launching a project—leading to attacks that could’ve been prevented. 

A minimum requirement is to include a buffer in your project’s launch roadmap to address concerns raised in the audit report. This can reduce the pressure to launch quickly at the expense of taking the time to fix critical security issues. 

You should also have at minimum a senior developer (or another qualified team member) available to discuss with and review feedback from auditors. This will reduce friction auditors must confront when trying to see changes implemented. 

Use an audit readiness checklist 
Some developers may forget to complete certain pre-audit tasks, partly because their attention is taken up by other projects. In this case, following an audit readiness checklist can assist developer teams in preparing adequately for an audit. The following smart contract audit checklists cover both essential and non-essential items to keep in mind when preparing for your next audit:

Pre-Audit Checklist (Essential Items)
The URL of a repo containing the source code
The commit hash to be reviewed
A list of the files in scope and out of scope of the audit
Documentation describing the intended functionality of the system
A list of the key risks for auditors to mitigate
Names, emails, and timezones of key personnel auditors will work with during the engagement
Note: The items in the pre-audit checklist are highly important and should be checked off before contacting auditors. Also, some of the required information such as the target commit hash and repository links can be put in the audit scope document as mentioned earlier. 

Pre-Audit Checklist (Non-Essential Items)
Clear instructions for setting up the system and run the tests (typically found in the project’s README file)
Information concerning previous audits (if any) 
Output logs from automated analysis tools (e.g., MythX, Surya, Mythril, etc.)
Output generated by running the test suite
Test coverage report
Note: While the items in this pre-audit checklist are described as “non-essential,” auditors will find them useful when preparing to work on your project. Hence, you should ensure that these items are available prior to commissioning the audit. 

Conclusion 
Getting rekt is no fun, especially when money from users is at stake. A smart contract audit is valuable for improving the security and integrity of a Web3 project—but only if you use it well. In this article, we have explored how to prepare for a smart contract audit and have a productive relationship with auditors. 

Once you execute these steps and feel your project is ready for an independent review, feel free to contact the Diligence team for a professional smart contract audit. You’ll be joining projects like 1inch Exchange, RocketPool, and 0x whose audits have benefited from Diligence’s experience in improving blockchain security.

To learn more about blockchain security best practices or for auditing services and automated tooling, visit consensys.net/diligence.
