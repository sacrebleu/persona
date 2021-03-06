# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

author = Author.create(first_name: 'Jeremy', last_name: 'Botha', date_of_birth: Time.strptime('1978-01-01', '%Y-%m-%d'),
              nationalities: 'British', current_location: 'London', degree: 'B.Sc (Hons) Computer Science')


facade = Facade.create(author_id: Author.first.id, name: "Jeremy Botha", description: "I am an experienced software engineer with an interest in functional programming, application design, systems
integration and performance tuning. I have a proven record of developing and extending distributed systems
based on CORBA, JMS, SOAP, FIX and restful APIs in both Java and Ruby. I have extensive experience in both
Telecommunications and Financial Services, and am at home developing and supporting server-side, client-side or
communications-layer software in heterogenous environments under tight schedules.\n
I believe that systems design requires a pragmatic approach; Real-world challenges often prevent you from
implementing an ideal solution, and as a result it is necessary to maintain an open, approachable and adaptive
mentality when dealing with business customers and their requirements.\n
I believe in automating what is possible, and in keeping the surface area of a system or API as small as possible.",
                       publication: Time.now)

Summary.create(facade: facade, description: "Java, Ruby and DevOps generalist")

Skill.create(
    [
        {name: 'Java', level: 4, years: 18, tag: '+', major: true, suppress: false},
        {name: 'Ruby', level: 4, years: 8, major: true, suppress: false},
        {name: 'Sql', level: 4, years: 18, tag: '+', major: true, suppress: false},
        {name: 'Jms', level: 3, years: 14, major: false, suppress: false},
        {name: 'Shell_Script', level: 3, years: 14,  major: true, suppress: true},
        {name: 'Concurrency', level: 3, years: 14, tag: '+', major: true, suppress: true},
        {name: 'Jenkins', level: 3, years: 10, major: true, suppress: true},
        {name: 'Mysql', level: 3, years: 12, major: true, suppress: true},
        {name: 'SOAP', level: 3, years: 8,  major: true, suppress: true},
        {name: 'REST', level: 3, years: 8,  major: true, suppress: true},
        {name: 'Amqp', level: 3, years: 4, major: true, suppress: true},
        {name: 'FIX', level: 3, years: 4,  major: true, suppress: false},
        {name: 'Terraform', level: 3, years: 4, major: true, suppress: false},
        {name: 'Ansible', level: 3, years: 4, major: true, suppress: false},
        {name: 'Puppet', level: 3, years: 4, major: false, suppress: false},
        {name: 'AWS', level: 4, years: 5, major: true},
        {name: 'REDIS', level: 2, years: 3, suppress: true},
        {name: 'Influxdb', level: 2, years: 2, suppress: true},
        {name: 'Packer', level: 2, years: 2, suppress: true},
        {name: 'Maven', level: 2, years: 8, suppress: true},
        {name: 'Javascript', level: 1, years: 5, suppress: true},
        {name: 'Rails', level: 2, years: 4, major: true, suppress: true},
        {name: 'Python', level: 2, years: 3, major: false, suppress: false},
        {name: 'Travis_CI', level: 2, years: 3, suppress: false},
        {name: 'Grafana', level: 3, years: 5, suppress: false},
        {name: 'Prometheus', level: 4, years: 4, major: true, suppress: false},
        {name: 'Victoria_Metrics', level: 4, years: 3, major: true, suppress: false},
        {name: 'Couchbase', level: 3, years: 1, major: false, suppress: false},
        {name: 'Atlantis', level: 3, years: 2, major: false, suppress: false},
        {name: 'Hibernate', level: 2, years: 2, major: false, suppress: false},
        {name: 'Elk', level: 3, years: 3, major: false, suppress: false},
        {name: 'Consul', level: 2, years: 2, major: false, suppress: false},
        {name: 'Nomad', level: 1, years: 1, major: false, suppress: false},
        {name: 'Puppet', level: 2, years: 2, suppress: false},
        {name: 'Kubernetes', level: 4, years: 3,  major: true, suppress: false},
        {name: 'CORBA', level: 2, years: 3, tag: '+',  suppress: false},
        {name: 'Kafka', level: 2, years: 3, tag: '+',  suppress: false}])

facade.skills = Skill.all

Tag.create(
    [
        { author: author, icon: :gmail, value: "mcfinnigan" },
        { author: author, icon: :stackoverflow, value: "story/mcfinnigan" },
        { author: author, icon: :github, value: "sacrebleu" },
        { author: author, icon: :location, value: "London, UK" }
    ]
)

p = Position.create(
    job_title: "Site Reliability Engineer",
    facade: facade,
    joined:  Time.strptime("Sep 2018", "%b %Y"),
    departed:  nil,
    company_name: "Vonage API Group",
    company_website: "developer.vonage.com",
    description: "I am responsible for providing AWS technology knowledge, advice and support to development teams as they migrate our systems to AWS. I am also generally responsible for monitoring and instrumentation of systems in AWS and for the design and provisioning of sections of our AWS infrastructure as a whole."
)

Achievement.create([{ position_id: p.id, description: "Implementation of EKS as a platform for our integration with Whatsapp, and supporting it as it grew to over two million messages a day"},
                    { position_id: p.id, description: "Design and Implementation of our VictoriaMetrics monitoring ecosystem."},
                    { position_id: p.id, description: "Development of Ruby applications and lambdas for instrumentation and systems management."},
                    { position_id: p.id, description: "Automation of Couchbase cluster creation and XDCR establishment both within and across Cloud providers."},
                    { position_id: p.id, description: "Implementation of Atlantis as a CI/CD pipeline for terraform pull requests in AWS."},
                    { position_id: p.id, description: "Implementation of ArgoCD as a CI/CD pipeline for Kubernetes GitOps."},
                    { position_id: p.id, description: "Multiple \"key contributor\" awards."}
                   ])

p.skills = Skill.where(name: ['Java', 'Ruby', 'AWS', 'Terraform', 'Puppet', 'Lambda', 'ArgoCD', 'EKS', 'VictoriaMetrics', 'Grafana', 'Elk', 'Couchbase', 'Atlantis', 'Kafka'])
p.save

p = Position.create(
                job_title: "Head of Engineering - Site Reliability",
                facade: facade,
                joined:  Time.strptime("Jul 2016", "%b %Y"),
                departed:  Time.strptime("Aug 2018", "%b %Y"),
                company_name: "CurrencyCloud",
                company_website: "www.currencycloud.com",
                description: "In June 2016 I was promoted to Head of Engineering, Systems Capability at Currency Cloud.\n
My remit was the performance, availability and scalability of our software systems as a whole, from front-ends and our APIs down to the database and AMQP level.\n
This involved guidance and oversight during the design process; reviewing, extending and performance-tuning service level code and support libraries used by the feature delivery teams, as well as ensuring that we captured usable metrics via statsd and logstash."
)

Achievement.create([{
                       position_id: p.id, description: "Primary technical developer during our migration to AWS, acting as liason to the specialist contractors who
assisted our migration."},
                    { position_id: p.id, description: "Developed and implemented performance tracking dashboards in Grafana"},
                    { position_id: p.id, description: "Developed and extended a custom statsd backend and client for our InfluxDB server"},
                    { position_id: p.id, description: "Primary technical developer during our trial of the WSO2 Suite of API-gateway products"}
                   ])

p.skills = Skill.where(name: ['Java', 'Ruby', 'AWS', 'Terraform', 'Ansible', 'MySql', 'Amqp', 'Influxdb', 'Jenkins', 'Packer', 'Statsd', 'Travis CI','Grafana', 'REDIS'])
p.save

p = Position.create(
    job_title: "Team Lead",
    facade: facade,
    joined:  Time.strptime("Jul 2012", "%b %Y"),
    departed:  Time.strptime("Jun 2016", "%b %Y"),
    company_name: "CurrencyCloud",
    company_website: "www.currencycloud.com",
    description: "Software engineering and systems design, centered around modernising a fragmented codebase and providing scalable solutions. I was the primary Java technical developer, and worked on integrating various java technologies into our JRuby stack and on troubleshooting existing legacy java systems such as the communications layer of our legacy FIX backbone.\n
I managed a team of four people comprising two developers and two testers; our focus and area of expertise was the FX section of our platform."
)

Achievement.create([{position_id: p.id, description: "Re-engineered our event-driven email notification platform"},
                    { position_id: p.id, description: "Re-engineered our core pricing / quoting system in order to make it distributed and concurrent"},
                    { position_id: p.id, description: "Performed general performance tuning and performance-focussed analysis of our codebase"},
                    { position_id: p.id, description: "Created and deployed a CI environment using Jenkins"},
                    { position_id: p.id, description: "Created a FX market simulator that permitted us to decouple our development and CI environments from the
FIX backbone"}
                   ])

p.skills = Skill.where(name: ['Java', 'Ruby', 'AWS', 'Terraform', 'Ansible', 'MySql', 'Amqp', 'Influxdb', 'Jenkins', 'Packer', 'Statsd', 'Travis CI','Grafana', 'REDIS'])
p.save

p = Position.create(
    job_title: "Senior Software Engineer",
    facade: facade,
    joined:  Time.strptime("Aug 2011", "%b %Y"),
    departed:  Time.strptime("Jun 2012", "%b %Y"),
    company_name: "The Travel Corporation",
    company_website: "www.ttc.com",
    description: "Software engineering and troubleshooting of a massive legacy EJB / MDB system which drove Travel Corporation's booking systems. During my time at Travel Corporation I drove a systematic analysis process of the codebase and made recommendations on various strategies we could attempt to adopt in order to rectify the severe codebase bloat the system had accumulated"
)

Achievement.create([{
                        position_id: p.id, description: "Wrote a recursive dependency analyser that walked the codebase and generated hyperlinked dependency
graphs of the classes and interfaces within the system as a demonstration of the system complexity"},
                    { position_id: p.id, description: "Re-engineered our core pricing / quoting system in order to make it distributed and concurrent"},
                    { position_id: p.id, description: "Prototyped a new UI section based on Bootstrap and CSS"},
                    { position_id: p.id, description: "Advocated for and provided a working implementation of a single signon system"},
                   ])

p.skills = Skill.where(name: ['Java', 'Maven'])
p.save

p = Position.create(
    job_title: "Senior Java Developer",
    facade: facade,
    joined:  Time.strptime("Jul 2009", "%b %Y"),
    departed:  Time.strptime("Jul 2011", "%b %Y"),
    company_name: "Soliditech (Pty) Ltd.",
    company_website: "www.soliditech.com",
    description: "My responsibilities included general new feature development and legacy support for our customers in Kenya, Tanzania and South Africa."
)

Achievement.create([{
                        position_id: p.id, description: "Developed Java-based services and multithreaded standalone Java agents to support the digital certification of
financial invoices in Kenya, Tanzania and Zimbabwe, involving integration to third-party digital signature devices"},
                    { position_id: p.id, description: "Developed customised data loaders which were used to migrate customer bases from defunct client systems
onto our Java platform"},
                    { position_id: p.id, description: "Developed Customer billing and refund code, including customised Point-of-sale support for Africa Online
Kenya" }])

p.skills = Skill.where(name: ['Java', 'Hibernate', 'MySQL', 'Jsp'])
p.save

p = Position.create(
    job_title: "Senior Java Developer",
    facade: facade,
    joined:  Time.strptime("Jun 2007", "%b %Y"),
    departed:  Time.strptime("Jul 2009", "%b %Y"),
    company_name: "Soliditech (Pty) Ltd.",
    company_website: "www.soliditech.com",
    description: "I was one of three senior Java developers who collectively developed and supported the distributed CORBA-based Java system that managed and provisioned Vodacom's network and cellular infrastructure in the Democratic Republic of the Congo and Tanzania."
)

Achievement.create([{
                        position_id: p.id, description: "Developed SMS-based services and a Campaign management system for subscribers in the DRC and Tanzania"},
                    { position_id: p.id, description: "Developed interfaces onto 3rd party applications, including Video streaming, Loyalty programs, Blackberry
service provisioning, IN and HLR platforms and CISCO network devices"},
                    { position_id: p.id, description: "Developed a small scriptable python / CORBA testing system which allowed me to perform automated testing
of an SMS service engine in conjunction with an open-source SMSC simulator" }])

p.skills = Skill.where(name: ['Java', 'Python', 'CORBA'])
p.save
