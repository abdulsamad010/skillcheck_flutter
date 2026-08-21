final Map<String, dynamic> quizzes =
{
  "Programming Fundamentals": [
    {
      "question": "What is the main benefit of decomposing a large program into functions?",
      "options": [
        "It removes variables",
        "It improves modularity and reuse",
        "It guarantees zero errors",
        "It makes every operation constant-time"
      ],
      "answer": "It improves modularity and reuse"
    },
    {
      "question": "What is x after x=5; x=x+3; x=x*2?",
      "options": ["10", "13", "16", "18"],
      "answer": "16"
    },
    {
      "question": "Which property is essential for a useful algorithm?",
      "options": [
        "It must use recursion",
        "It has defined steps and terminates",
        "It must use maximum memory",
        "It must contain many statements"
      ],
      "answer": "It has defined steps and terminates"
    },
    {
      "question": "What does a variable primarily represent?",
      "options": [
        "A named storage location for a value",
        "A compiler error",
        "A hardware device",
        "An executable file"
      ],
      "answer": "A named storage location for a value"
    },
    {
      "question": "An algorithm scans n elements once. What is its typical time complexity?",
      "options": ["O(1)", "O(log n)", "O(n)", "O(n²)"],
      "answer": "O(n)"
    },
    {
      "question": "What is the purpose of a conditional statement?",
      "options": [
        "Repeat forever",
        "Choose execution based on a condition",
        "Store data permanently",
        "Compile the program"
      ],
      "answer": "Choose execution based on a condition"
    },
    {
      "question": "Why is exception handling used?",
      "options": [
        "To create errors",
        "To handle exceptional runtime situations",
        "To increase CPU speed",
        "To replace variables"
      ],
      "answer": "To handle exceptional runtime situations"
    },
    {
      "question": "What is a side effect of a function?",
      "options": [
        "Returning a value",
        "Changing state outside its local computation",
        "Accepting a parameter",
        "Having a name"
      ],
      "answer": "Changing state outside its local computation"
    },
    {
      "question": "Why are meaningful names important in code?",
      "options": [
        "They make CPU faster",
        "They improve readability and maintainability",
        "They eliminate memory use",
        "They prevent all bugs"
      ],
      "answer": "They improve readability and maintainability"
    },
    {
      "question": "What does recursion need to terminate correctly?",
      "options": ["A global variable", "A base case", "A database", "A UI"],
      "answer": "A base case"
    }
  ],
  "Object-Oriented Programming": [
    {
      "question": "What does encapsulation primarily achieve?",
      "options": [
        "Combines data and behavior while controlling access",
        "Makes every class inherit",
        "Removes constructors",
        "Converts objects to databases"
      ],
      "answer": "Combines data and behavior while controlling access"
    },
    {
      "question": "Which OOP principle allows a subclass to reuse superclass behavior?",
      "options": ["Abstraction", "Inheritance", "Encapsulation", "Overloading"],
      "answer": "Inheritance"
    },
    {
      "question": "What is polymorphism mainly about?",
      "options": [
        "One interface supporting different implementations",
        "Hiding every variable",
        "Preventing objects",
        "Storing files"
      ],
      "answer": "One interface supporting different implementations"
    },
    {
      "question": "Why is abstraction useful?",
      "options": [
        "It exposes every detail",
        "It hides unnecessary implementation details",
        "It prevents reuse",
        "It removes classes"
      ],
      "answer": "It hides unnecessary implementation details"
    },
    {
      "question": "What is an object?",
      "options": [
        "An instance of a class",
        "A source comment",
        "A compiler",
        "A database schema"
      ],
      "answer": "An instance of a class"
    },
    {
      "question": "Which relationship represents an object containing another object as part of its state?",
      "options": ["Composition", "Inheritance", "Compilation", "Recursion"],
      "answer": "Composition"
    },
    {
      "question": "What is method overriding?",
      "options": [
        "A subclass provides specialized behavior for an inherited method",
        "Deleting a superclass method",
        "Creating a database method",
        "Calling without an object"
      ],
      "answer": "A subclass provides specialized behavior for an inherited method"
    },
    {
      "question": "Why program to an interface rather than a concrete implementation?",
      "options": [
        "It increases coupling",
        "It reduces flexibility",
        "Implementations can change with less client impact",
        "It prevents polymorphism"
      ],
      "answer": "Implementations can change with less client impact"
    },
    {
      "question": "Which SOLID principle gives a class one primary responsibility?",
      "options": [
        "Single Responsibility",
        "Open/Closed",
        "Liskov Substitution",
        "Dependency Inversion"
      ],
      "answer": "Single Responsibility"
    },
    {
      "question": "What is dependency injection?",
      "options": [
        "Creating dependencies inside the class",
        "Providing dependencies from outside the object",
        "Removing every dependency",
        "Injecting code into a database"
      ],
      "answer": "Providing dependencies from outside the object"
    }
  ],

  "Data Structures & Algorithms": [
    {
      "question": "Which structure is most suitable for undo operations?",
      "options": ["Queue", "Stack", "Graph", "Heap"],
      "answer": "Stack"
    },
    {
      "question": "What is average search complexity in a well-designed hash table?",
      "options": ["O(1)", "O(log n)", "O(n)", "O(n log n)"],
      "answer": "O(1)"
    },
    {
      "question": "Which BST traversal produces sorted values?",
      "options": ["Preorder", "Inorder", "Postorder", "Level-order"],
      "answer": "Inorder"
    },
    {
      "question": "Which strategy repeatedly chooses the locally best option?",
      "options": [
        "Greedy",
        "Backtracking",
        "Divide and conquer",
        "Brute force"
      ],
      "answer": "Greedy"
    },
    {
      "question": "What is binary search worst-case complexity on a sorted array?",
      "options": ["O(1)", "O(log n)", "O(n)", "O(n²)"],
      "answer": "O(log n)"
    },
    {
      "question": "Which structure is commonly used for BFS?",
      "options": ["Stack", "Queue", "Heap", "Hash set"],
      "answer": "Queue"
    },
    {
      "question": "What is the core idea of divide and conquer?",
      "options": [
        "Solve without decomposition",
        "Divide, solve subproblems, and combine",
        "Always use a queue",
        "Randomly select a solution"
      ],
      "answer": "Divide, solve subproblems, and combine"
    },
    {
      "question": "Which sorting algorithm uses partitioning and has average O(n log n)?",
      "options": [
        "Bubble sort",
        "Selection sort",
        "Quick sort",
        "Linear search"
      ],
      "answer": "Quick sort"
    },
    {
      "question": "Two nested loops each run n times. Typical complexity?",
      "options": ["O(log n)", "O(n)", "O(n²)", "O(2n)"],
      "answer": "O(n²)"
    },
    {
      "question": "Which approach fits overlapping subproblems and optimal substructure?",
      "options": [
        "Dynamic programming",
        "Random guessing",
        "Linear scanning only",
        "Syntax analysis"
      ],
      "answer": "Dynamic programming"
    }
  ],
  "Computer Fundamentals": [
    {
      "question": "Which component executes program instructions?",
      "options": ["CPU", "RAM", "SSD", "Monitor"],
      "answer": "CPU"
    },
    {
      "question": "What is RAM mainly used for?",
      "options": [
        "Long-term storage",
        "Temporary storage for active data and programs",
        "Displaying images",
        "Network connectivity"
      ],
      "answer": "Temporary storage for active data and programs"
    },
    {
      "question": "Which memory type is volatile?",
      "options": ["SSD", "ROM", "RAM", "Flash"],
      "answer": "RAM"
    },
    {
      "question": "What is the main role of an operating system?",
      "options": [
        "Manage hardware and provide services to applications",
        "Only browse websites",
        "Only store photos",
        "Replace the CPU"
      ],
      "answer": "Manage hardware and provide services to applications"
    },
    {
      "question": "Which is primarily an output device?",
      "options": ["Keyboard", "Mouse", "Monitor", "Microphone"],
      "answer": "Monitor"
    },
    {
      "question": "What does a file system primarily manage?",
      "options": [
        "Files and directories on storage",
        "CPU voltage",
        "Passwords",
        "Monitor brightness"
      ],
      "answer": "Files and directories on storage"
    },
    {
      "question": "Which storage technology has no moving mechanical parts?",
      "options": ["HDD", "SSD", "Magnetic tape", "Floppy disk"],
      "answer": "SSD"
    },
    {
      "question": "What is a device driver mainly responsible for?",
      "options": [
        "Allowing the OS to communicate with hardware",
        "Creating passwords",
        "Compressing files",
        "Replacing the OS"
      ],
      "answer": "Allowing the OS to communicate with hardware"
    },
    {
      "question": "What is the main purpose of cache memory?",
      "options": [
        "Faster access to frequently needed data",
        "Permanent archiving",
        "Network routing",
        "Replacing RAM entirely"
      ],
      "answer": "Faster access to frequently needed data"
    },
    {
      "question": "Which statement best describes a process?",
      "options": [
        "A program currently in execution",
        "A file extension",
        "A keyboard key",
        "A storage partition"
      ],
      "answer": "A program currently in execution"
    }
  ],
  "Operating Systems": [
    {
      "question": "What is a process?",
      "options": [
        "A program in execution",
        "A text file",
        "A hardware cable",
        "A user account"
      ],
      "answer": "A program in execution"
    },
    {
      "question": "What is a thread?",
      "options": [
        "A unit of execution within a process",
        "A hard disk",
        "A network address",
        "A file extension"
      ],
      "answer": "A unit of execution within a process"
    },
    {
      "question": "What is virtual memory used for?",
      "options": [
        "Using storage to extend apparent memory",
        "Increasing CPU speed",
        "Replacing the OS",
        "Encrypting files"
      ],
      "answer": "Using storage to extend apparent memory"
    },
    {
      "question": "What is a deadlock?",
      "options": [
        "Processes waiting indefinitely for resources",
        "A process finishing normally",
        "Successful memory allocation",
        "A completed request"
      ],
      "answer": "Processes waiting indefinitely for resources"
    },
    {
      "question": "Which scheduling method uses fixed time slices in rotation?",
      "options": ["FCFS", "Round Robin", "Shortest Job First", "Priority only"],
      "answer": "Round Robin"
    },
    {
      "question": "What is context switching?",
      "options": [
        "Saving one execution context and loading another",
        "Deleting a process",
        "Changing a file extension",
        "Formatting a disk"
      ],
      "answer": "Saving one execution context and loading another"
    },
    {
      "question": "What is paging primarily used for?",
      "options": [
        "Memory management using pages and frames",
        "Network routing",
        "File compression",
        "Instruction decoding"
      ],
      "answer": "Memory management using pages and frames"
    },
    {
      "question": "Which is a necessary condition for deadlock?",
      "options": [
        "Mutual exclusion",
        "Infinite CPU speed",
        "No shared resources",
        "Immediate resource release"
      ],
      "answer": "Mutual exclusion"
    },
    {
      "question": "What is a system call?",
      "options": [
        "A controlled interface for requesting OS services",
        "A display setting",
        "A compiler",
        "A hardware driver"
      ],
      "answer": "A controlled interface for requesting OS services"
    },
    {
      "question": "What is multitasking?",
      "options": [
        "Allowing multiple tasks to make progress through scheduling",
        "Using multiple keyboards",
        "Installing multiple OSs",
        "Storing multiple files"
      ],
      "answer": "Allowing multiple tasks to make progress through scheduling"
    }
  ],
  "Internet & Web Basics": [
    {
      "question": "What is the primary purpose of DNS?",
      "options": [
        "Translate domain names to IP addresses",
        "Encrypt all traffic",
        "Store web pages",
        "Increase CPU speed"
      ],
      "answer": "Translate domain names to IP addresses"
    },
    {
      "question": "What does HTTPS primarily provide over HTTP?",
      "options": [
        "Encrypted client-server communication",
        "Unlimited bandwidth",
        "Faster CPU execution",
        "Permanent browser storage"
      ],
      "answer": "Encrypted client-server communication"
    },
    {
      "question": "What is an IP address used for?",
      "options": [
        "Identifying a device or network interface for communication",
        "Naming variables",
        "Compressing images",
        "Encrypting passwords by itself"
      ],
      "answer": "Identifying a device or network interface for communication"
    },
    {
      "question": "Which HTTP method conventionally retrieves a resource?",
      "options": ["POST", "GET", "DELETE", "PATCH"],
      "answer": "GET"
    },
    {
      "question": "Which HTTP status-code class indicates success?",
      "options": ["1xx", "2xx", "4xx", "5xx"],
      "answer": "2xx"
    },
    {
      "question": "What is a URL?",
      "options": [
        "An address identifying a resource",
        "A processor type",
        "A database table",
        "A programming loop"
      ],
      "answer": "An address identifying a resource"
    },
    {
      "question": "What is the main role of a web browser?",
      "options": [
        "Request, process, and display web content",
        "Replace the OS",
        "Create network cables",
        "Manage CPU registers"
      ],
      "answer": "Request, process, and display web content"
    },
    {
      "question": "What does HTTP 404 generally indicate?",
      "options": [
        "The requested resource was not found",
        "Resource created successfully",
        "Permanent redirect",
        "Server shutdown"
      ],
      "answer": "The requested resource was not found"
    },
    {
      "question": "What is a web server?",
      "options": [
        "A system that receives requests and serves web resources",
        "A browser extension",
        "A programming language",
        "A database field"
      ],
      "answer": "A system that receives requests and serves web resources"
    },
    {
      "question": "What is an API primarily used for?",
      "options": [
        "Allowing software components to communicate through defined interfaces",
        "Increasing brightness",
        "Replacing databases",
        "Formatting memory"
      ],
      "answer": "Allowing software components to communicate through defined interfaces"
    }
  ],
  "Cybersecurity Basics": [
    {
      "question": "What is the main goal of authentication?",
      "options": [
        "Verify identity",
        "Grant administrator access",
        "Encrypt every file",
        "Increase network speed"
      ],
      "answer": "Verify identity"
    },
    {
      "question": "What is authorization?",
      "options": [
        "Determining what an authenticated user may access",
        "Verifying a password",
        "Encrypting traffic",
        "Creating a backup"
      ],
      "answer": "Determining what an authenticated user may access"
    },
    {
      "question": "What does least privilege mean?",
      "options": [
        "Give only necessary access",
        "Give everyone administrator access",
        "Disable authentication",
        "Allow unrestricted access"
      ],
      "answer": "Give only necessary access"
    },
    {
      "question": "What is malware?",
      "options": [
        "Malicious software",
        "A secure backup",
        "A network protocol",
        "Hardware"
      ],
      "answer": "Malicious software"
    },
    {
      "question": "What is encryption primarily used for?",
      "options": [
        "Protecting information by transforming it using cryptographic methods",
        "Increasing CPU speed",
        "Removing duplicates",
        "Improving resolution"
      ],
      "answer": "Protecting information by transforming it using cryptographic methods"
    },
    {
      "question": "What is a firewall mainly designed to do?",
      "options": [
        "Control network traffic according to security rules",
        "Store photos",
        "Compile applications",
        "Replace all antivirus"
      ],
      "answer": "Control network traffic according to security rules"
    },
    {
      "question": "What is a vulnerability?",
      "options": [
        "A weakness that could be exploited",
        "A security control",
        "A backup",
        "An encryption key"
      ],
      "answer": "A weakness that could be exploited"
    },
    {
      "question": "Why are security updates important?",
      "options": [
        "They can fix known vulnerabilities",
        "They always increase storage",
        "They remove passwords",
        "They guarantee no attacks"
      ],
      "answer": "They can fix known vulnerabilities"
    },
    {
      "question": "A denial-of-service attack primarily targets which security property?",
      "options": [
        "Availability",
        "Confidentiality",
        "Portability",
        "Maintainability"
      ],
      "answer": "Availability"
    },
    {
      "question": "What can a digital certificate help establish?",
      "options": [
        "The identity of a website or entity",
        "Keyboard location",
        "RAM amount",
        "Typing speed"
      ],
      "answer": "The identity of a website or entity"
    }
  ],
  "Online Safety": [
    {
      "question": "What is safest when an unexpected message asks you to verify an account through a link?",
      "options": [
        "Click immediately",
        "Verify through an official channel first",
        "Forward it",
        "Reply with your password"
      ],
      "answer": "Verify through an official channel first"
    },
    {
      "question": "What is phishing?",
      "options": [
        "A fraudulent attempt to obtain sensitive information",
        "File compression",
        "Secure authentication",
        "Hardware diagnostics"
      ],
      "answer": "A fraudulent attempt to obtain sensitive information"
    },
    {
      "question": "Why avoid sensitive actions on untrusted public networks?",
      "options": [
        "Information may be exposed to interception or attacks",
        "They delete information",
        "They slow hardware",
        "They prevent all websites"
      ],
      "answer": "Information may be exposed to interception or attacks"
    },
    {
      "question": "What is good practice on a public computer?",
      "options": [
        "Save passwords",
        "Log out when finished",
        "Disable security",
        "Leave files open"
      ],
      "answer": "Log out when finished"
    },
    {
      "question": "What should you do if a website address looks suspicious before entering sensitive data?",
      "options": [
        "Enter it quickly",
        "Stop and verify the website",
        "Disable security",
        "Share the link"
      ],
      "answer": "Stop and verify the website"
    },
    {
      "question": "Why is software from unknown sources risky?",
      "options": [
        "It may contain malicious or modified software",
        "It always uses less storage",
        "It cannot run",
        "It improves security"
      ],
      "answer": "It may contain malicious or modified software"
    },
    {
      "question": "What is social engineering?",
      "options": [
        "Manipulating people into unsafe actions or revealing information",
        "Designing social media apps",
        "Improving bandwidth",
        "Creating hardware"
      ],
      "answer": "Manipulating people into unsafe actions or revealing information"
    },
    {
      "question": "What should you do with a suspicious attachment?",
      "options": [
        "Open immediately",
        "Verify sender and attachment first",
        "Disable antivirus",
        "Upload it everywhere"
      ],
      "answer": "Verify sender and attachment first"
    },
    {
      "question": "Why keep applications updated?",
      "options": [
        "Updates can include security fixes",
        "They remove personal files",
        "They eliminate backups",
        "They guarantee no attacks"
      ],
      "answer": "Updates can include security fixes"
    },
    {
      "question": "What is a backup useful for after accidental data loss?",
      "options": [
        "Recovering a previous copy",
        "Increasing CPU speed",
        "Changing IP",
        "Automatically removing all malware"
      ],
      "answer": "Recovering a previous copy"
    }
  ],
  "Password & Privacy Awareness": [
    {
      "question": "Which password practice is strongest?",
      "options": [
        "Reuse one short password",
        "Use long unique passwords or passphrases",
        "Use your birth date",
        "Use your name plus 123"
      ],
      "answer": "Use long unique passwords or passphrases"
    },
    {
      "question": "What is a main benefit of a password manager?",
      "options": [
        "Securely store and generate unique passwords",
        "Remove authentication",
        "Make passwords public",
        "Disable encryption"
      ],
      "answer": "Securely store and generate unique passwords"
    },
    {
      "question": "What does multi-factor authentication require?",
      "options": [
        "At least two different authentication factors",
        "Two copies of one password",
        "Two usernames",
        "No verification"
      ],
      "answer": "At least two different authentication factors"
    },
    {
      "question": "Why is password reuse risky?",
      "options": [
        "One compromised account can put other accounts at risk",
        "It makes passwords too long",
        "It prevents all logins",
        "It encrypts accounts"
      ],
      "answer": "One compromised account can put other accounts at risk"
    },
    {
      "question": "What is personally identifiable information?",
      "options": [
        "Information that can identify or be linked to an individual",
        "Only hardware specifications",
        "Only public documentation",
        "A network cable"
      ],
      "answer": "Information that can identify or be linked to an individual"
    },
    {
      "question": "Why minimize unnecessary personal information online?",
      "options": [
        "It reduces unnecessary exposure of personal data",
        "It guarantees faster internet",
        "It increases resolution",
        "It eliminates every threat"
      ],
      "answer": "It reduces unnecessary exposure of personal data"
    },
    {
      "question": "What does a privacy setting primarily control?",
      "options": [
        "How personal information and activity are shared or exposed",
        "CPU temperature",
        "Disk speed",
        "Brightness"
      ],
      "answer": "How personal information and activity are shared or exposed"
    },
    {
      "question": "What is credential stuffing?",
      "options": [
        "Using stolen username-password pairs against multiple services",
        "Creating a password manager",
        "Encrypting a disk",
        "Backing up credentials"
      ],
      "answer": "Using stolen username-password pairs against multiple services"
    },
    {
      "question": "Why avoid easily searchable answers to security questions?",
      "options": [
        "Attackers may discover or guess them",
        "They make passwords shorter",
        "They prevent MFA",
        "They increase storage"
      ],
      "answer": "Attackers may discover or guess them"
    },
    {
      "question": "Why review privacy permissions periodically?",
      "options": [
        "Apps may retain access that is no longer necessary",
        "It guarantees no compromise",
        "It increases storage",
        "It removes the OS"
      ],
      "answer": "Apps may retain access that is no longer necessary"
    }
  ],
  "Logical Reasoning": [
    {
      "question": "If all A are B and all B are C, what necessarily follows?",
      "options": [
        "All C are A",
        "Some C are not B",
        "All A are C",
        "No A are C"
      ],
      "answer": "All A are C"
    },
    {
      "question": "What comes next: 3, 6, 12, 24, 48, ?",
      "options": ["72", "84", "96", "108"],
      "answer": "96"
    },
    {
      "question": "P is taller than Q, Q than R, and R than S. Who is shortest?",
      "options": ["P", "Q", "R", "S"],
      "answer": "S"
    },
    {
      "question": "A result occurs only when both A and B are true. Which operator represents this?",
      "options": ["OR", "AND", "NOT", "XOR"],
      "answer": "AND"
    },
    {
      "question": "What comes next: 2, 5, 10, 17, 26, ?",
      "options": ["35", "37", "39", "42"],
      "answer": "37"
    },
    {
      "question": "Some developers are designers and all designers are creative. What necessarily follows?",
      "options": [
        "All developers are creative",
        "Some developers are creative",
        "No developers are creative",
        "All creative people are developers"
      ],
      "answer": "Some developers are creative"
    },
    {
      "question": "At 3:00, what is the smaller angle between clock hands?",
      "options": ["60°", "90°", "120°", "180°"],
      "answer": "90°"
    },
    {
      "question": "If today is Wednesday, what day is it 10 days later?",
      "options": ["Friday", "Saturday", "Sunday", "Monday"],
      "answer": "Saturday"
    },
    {
      "question": "Which number breaks the pattern: 4, 9, 16, 25, 36, 48?",
      "options": ["16", "25", "36", "48"],
      "answer": "48"
    },
    {
      "question": "A valid input must satisfy A OR B. Which input is invalid?",
      "options": ["A only", "B only", "Both A and B", "Neither A nor B"],
      "answer": "Neither A nor B"
    }
  ],
  "Analytical Thinking": [
    {
      "question": "A must finish before B, and B before C. Which task must be first?",
      "options": ["A", "B", "C", "B and C"],
      "answer": "A"
    },
    {
      "question": "A value increases from 80 to 100. What is the percentage increase?",
      "options": ["20%", "25%", "30%", "40%"],
      "answer": "25%"
    },
    {
      "question": "A team completes 120 tasks in 6 days at a constant rate. Tasks per day?",
      "options": ["15", "20", "24", "30"],
      "answer": "20"
    },
    {
      "question": "An 800 item has a 15% discount. What is the new price?",
      "options": ["660", "680", "700", "720"],
      "answer": "680"
    },
    {
      "question": "A process succeeds independently with probability 0.9 twice. Probability both succeed?",
      "options": ["81%", "90%", "95%", "99%"],
      "answer": "81%"
    },
    {
      "question": "Three independent stages have success probabilities 0.9, 0.8 and 0.5. Probability all succeed?",
      "options": ["0.18", "0.36", "0.45", "0.72"],
      "answer": "0.36"
    },
    {
      "question": "A dataset is 40% A and 60% B. If there are 250 records, how many are B?",
      "options": ["100", "125", "150", "175"],
      "answer": "150"
    },
    {
      "question": "A task takes 10 hours. A 20% proportional efficiency improvement changes the time to?",
      "options": ["7 hours", "8 hours", "8.5 hours", "9 hours"],
      "answer": "8 hours"
    },
    {
      "question": "Scores are 72, 80 and 88. What is their average?",
      "options": ["78", "80", "82", "84"],
      "answer": "80"
    },
    {
      "question": "How many unique pairs can be formed from 5 developers if each pair has one review relationship?",
      "options": ["5", "10", "15", "20"],
      "answer": "10"
    }
  ],
  "Problem Solving": [
    {
      "question": "A program takes 2 seconds for 1,000 records at a constant rate. Time for 5,000?",
      "options": ["4 seconds", "6 seconds", "10 seconds", "20 seconds"],
      "answer": "10 seconds"
    },
    {
      "question": "A has more items than B, and B more than C. Which has fewest?",
      "options": ["A", "B", "C", "Cannot be determined"],
      "answer": "C"
    },
    {
      "question": "What comes next: 1, 4, 9, 16, 25, ?",
      "options": ["30", "32", "36", "40"],
      "answer": "36"
    },
    {
      "question": "A developer has 8 tasks and completes 3. How many remain?",
      "options": ["3", "4", "5", "6"],
      "answer": "5"
    },
    {
      "question": "A bug occurs in 2 of every 100 runs. What is the observed rate?",
      "options": ["0.2%", "2%", "5%", "20%"],
      "answer": "2%"
    },
    {
      "question": "A value is doubled and then increased by 5. If it starts at 10, result?",
      "options": ["20", "25", "30", "35"],
      "answer": "25"
    },
    {
      "question": "A list has 50 items. If 20% are removed, how many remain?",
      "options": ["30", "35", "40", "45"],
      "answer": "40"
    },
    {
      "question": "A meeting starts at 10:20 AM and lasts 1 hour 45 minutes. When does it end?",
      "options": ["11:55 AM", "12:00 PM", "12:05 PM", "12:15 PM"],
      "answer": "12:05 PM"
    },
    {
      "question": "Four workers complete a task in 6 hours at the same rate. Required worker-hours?",
      "options": ["10", "18", "24", "30"],
      "answer": "24"
    },
    {
      "question": "A value decreases from 500 to 425. What is the percentage decrease?",
      "options": ["10%", "12%", "15%", "20%"],
      "answer": "15%"
    }
  ]
};