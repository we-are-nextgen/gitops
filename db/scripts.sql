alter table if exists bootcamp 
   drop constraint if exists FKiwtqmsrus5aqhidbfw4kof6an;

alter table if exists Bootcamp_audience 
   drop constraint if exists FKhdgg36n7bnfuxm5d596p7i490;

alter table if exists Bootcamp_outcomes 
   drop constraint if exists FK631pw9tv7xw9pfydwol64jo0k;

alter table if exists bootcamp_progress 
   drop constraint if exists FKfnrgjwxgw1ns85fqxv3k1i28;

alter table if exists bootcamp_start 
   drop constraint if exists FKtga8raoxdt3ah6fg5ax1x2etp;

alter table if exists bootcamp_start 
   drop constraint if exists FK86s7i1aas7bg6eejeld27o7sn;

alter table if exists Component 
   drop constraint if exists FKf89a6s1x9r2l442jf1oulqx97;

alter table if exists domain_profiles 
   drop constraint if exists FK2e2n7bq6u0kljqursrlpqn92d;

alter table if exists domain_profiles 
   drop constraint if exists FK4kf3vx7puo92iqav9hni7g9va;

alter table if exists Exercise 
   drop constraint if exists FK9kigqx35t54fjxvs1jrvfuhu9;

alter table if exists exercise_submission 
   drop constraint if exists FKnwo64nqqgi4rqslllyg3rot4s;

alter table if exists exercise_submission 
   drop constraint if exists FK3kteecvl5757bbeu34jx9a30o;

alter table if exists ITProfessional 
   drop constraint if exists FKftrdtq3b1ltcna6w62p3po9sn;

alter table if exists ITProfessional 
   drop constraint if exists FKb7srl2xe4u6jda4dro4en2y0;

alter table if exists ITProfessional 
   drop constraint if exists FKnkoiep3ruqt7rk8432jffwx7x;

alter table if exists lab_asset 
   drop constraint if exists FK1irxdm6f9xch51c2e9l18i0j9;

alter table if exists lab_progress 
   drop constraint if exists FKicdcaj2mgfu4j4w92e35mqo6a;

alter table if exists Layer 
   drop constraint if exists FKc087jtwxxsp4638h7wyrvf8wa;

alter table if exists layer_progress 
   drop constraint if exists FKp1etda60u54aj7sb7dxj25n7p;

alter table if exists layer_progress 
   drop constraint if exists FKkgi7kdu631h4gsm1m1ul5mox3;

alter table if exists Learning_track 
   drop constraint if exists FKbil125haexu4ylhsdtvk70d9i;

alter table if exists learning_track_labs 
   drop constraint if exists FKospbncs70biev3os8ga5xmti8;

alter table if exists learning_track_labs 
   drop constraint if exists FKa6pwaypv67cba0uys77wtukg1;

alter table if exists learning_track_profiles 
   drop constraint if exists FK29g154tjx31ptnjec294a6hnu;

alter table if exists learning_track_profiles 
   drop constraint if exists FK3fyb0e3fwpmfa0mdri0lp2s0u;

alter table if exists Milestone 
   drop constraint if exists FKqyxp45gfysta6fsjoy2h154dt;

alter table if exists milestone_activity 
   drop constraint if exists FKt1jfnpvtwdcn4tyj9eqwwy1j7;

alter table if exists milestone_activity 
   drop constraint if exists FK57peced4amllt7s7fxw73tq3m;

alter table if exists Module 
   drop constraint if exists FKa15al6xmylw1c76k2vcg4ptuy;

alter table if exists Module_linkedLabs 
   drop constraint if exists FK2wn6twalcq2ad61hfm3rjw7oe;

alter table if exists Module_objectives 
   drop constraint if exists FK9sstavpm1k1abka8aunepcpo4;

alter table if exists module_progress 
   drop constraint if exists FK5n549fev1c0nb3v2h19s3b0q1;

alter table if exists module_progress 
   drop constraint if exists FK8rniqgavycnkgpurlstfs006t;

alter table if exists module_progress 
   drop constraint if exists FK3fs9fpki0rgajlq2deglhd4iv;

alter table if exists quiz_scores 
   drop constraint if exists FKnuqxjba16te8l5di56awvecwd;

alter table if exists Stage 
   drop constraint if exists FKgele0tolrm3vasjjl5wlmgibb;

alter table if exists Team 
   drop constraint if exists FKlqy96qevwe86hyy1i8od3cp7m;

alter table if exists team_members 
   drop constraint if exists FK72okgoj98edb4csoa8mxrnc9v;

alter table if exists team_members 
   drop constraint if exists FKmts7ykdj28ovrhahihcsk608m;

alter table if exists user_badges 
   drop constraint if exists FK9q0t8irte2td6jdj4khgsokgx;

alter table if exists user_badges 
   drop constraint if exists FKporng32adnn89itjlx8ufs4a6;

alter table if exists user_bootcamp 
   drop constraint if exists FKk2xadtetod6s51o7njpp6exbf;

alter table if exists user_bootcamp 
   drop constraint if exists FKlpajl0ap2gfkegy3gbe2dokvl;

alter table if exists user_lab_progress 
   drop constraint if exists FK49kqdfqxspflfwlij4ilvt2vb;

alter table if exists user_lab_progress 
   drop constraint if exists FKahw6g8wkfdu6q6jakiw7iu1s7;

alter table if exists user_lab_progress 
   drop constraint if exists FK22r1dowohpvik6y2s4w1yy14;

alter table if exists user_profiles 
   drop constraint if exists FK5nmh45aaincvpcdmxf585j2pv;

alter table if exists user_profiles 
   drop constraint if exists FKog0qe0nleoodqy8oc3vepai1d;

alter table if exists user_progress 
   drop constraint if exists FKcmcx6qvm1ohifs57wmyf1a8vy;

alter table if exists user_progress 
   drop constraint if exists FKpoj0002pf5w45echdxbi402r6;

alter table if exists user_progress 
   drop constraint if exists FKg3p162dxbyj272doy00omc8l6;

alter table if exists user_progress 
   drop constraint if exists FKlmnhxpeqlaovp1ocv2eobavic;

alter table if exists user_tracks 
   drop constraint if exists FK6sbhne7x76exoeeh2hmuim1c6;

alter table if exists user_tracks 
   drop constraint if exists FK5v8uu8omdalrydt9hby50shoa;

drop table if exists Activity cascade;

drop table if exists Badge cascade;

drop table if exists bootcamp cascade;

drop table if exists Bootcamp_audience cascade;

drop table if exists Bootcamp_outcomes cascade;

drop table if exists bootcamp_progress cascade;

drop table if exists bootcamp_start cascade;

drop table if exists Component cascade;

drop table if exists Domain cascade;

drop table if exists domain_profiles cascade;

drop table if exists Exercise cascade;

drop table if exists exercise_submission cascade;

drop table if exists ITProfessional cascade;

drop table if exists Journey cascade;

drop table if exists Lab cascade;

drop table if exists lab_asset cascade;

drop table if exists lab_progress cascade;

drop table if exists Layer cascade;

drop table if exists layer_progress cascade;

drop table if exists Learning_track cascade;

drop table if exists learning_track_labs cascade;

drop table if exists learning_track_profiles cascade;

drop table if exists Milestone cascade;

drop table if exists milestone_activity cascade;

drop table if exists Module cascade;

drop table if exists Module_linkedLabs cascade;

drop table if exists Module_objectives cascade;

drop table if exists module_progress cascade;

drop table if exists Profile cascade;

drop table if exists quiz_scores cascade;

drop table if exists Stage cascade;

drop table if exists Team cascade;

drop table if exists team_members cascade;

drop table if exists user_badges cascade;

drop table if exists user_bootcamp cascade;

drop table if exists user_lab_progress cascade;

drop table if exists user_profiles cascade;

drop table if exists user_progress cascade;

drop table if exists user_tracks cascade;

create table Activity (
create_date timestamp(6),
update_date timestamp(6),
id uuid not null,
created_by varchar(255),
description varchar(255),
name varchar(255),
updated_by varchar(255),
primary key (id)
);


create table Badge (
create_date timestamp(6),
update_date timestamp(6),
id uuid not null,
category varchar(255) check ((category in ('MILESTONE','STAGE','SKILL','COMMUNITY','JOURNEY','SPECIAL'))),
created_by varchar(255),
icon varchar(255),
level varchar(255) check ((level in ('NONE','BRONZE','SILVER','GOLD'))),
name varchar(255),
rarity varchar(255),
rule_type varchar(255) check ((rule_type in ('COMPLETE_PROFILE','ENROLL_TO_TRACK','ENROLL_TO_LAB','COMPLETE_TRACK','COMPLETE_LAB','COMPLETE_MILESTONE','COMPLETE_ALL_MILESTONES_IN_STAGE','COMPLETE_STAGE','COMPLETE_JOURNEY','POINTS_REACHED'))),
rule_value varchar(255),
title varchar(255),
updated_by varchar(255),
primary key (id)
);


create table bootcamp (
capacity integer,
durationWeeks integer,
expected_start_date date,
create_date timestamp(6),
update_date timestamp(6),
id uuid not null,
mentor_id uuid,
badge_rule_value varchar(255),
created_by varchar(255),
description varchar(255),
name varchar(255),
updated_by varchar(255),
version varchar(255),
primary key (id)
);


create table Bootcamp_audience (
Bootcamp_id uuid not null,
audience varchar(255)
);


create table Bootcamp_outcomes (
Bootcamp_id uuid not null,
outcomes varchar(255)
);


create table bootcamp_progress (
progress_percentage integer not null,
completed_at timestamp(6) with time zone,
create_date timestamp(6),
earned_points bigint,
update_date timestamp(6),
bootcamp_start_id uuid not null,
id uuid not null,
created_by varchar(255),
updated_by varchar(255),
primary key (id)
);


create table bootcamp_start (
create_date timestamp(6),
started_at timestamp(6) with time zone not null,
update_date timestamp(6),
bootcamp_id uuid,
id uuid not null,
user_id uuid,
cohort_name varchar(255),
created_by varchar(255),
status varchar(255) check ((status in ('OPEN_FOR_ENROLLMENT','SARTED','KICKOFF','ORIENTATION','CORE_MODULES','PRACTICE_MODULES','COMPLETED'))),
updated_by varchar(255),
primary key (id)
);


create table Component (
create_date timestamp(6),
update_date timestamp(6),
id uuid not null,
module_id uuid,
created_by varchar(255),
reference varchar(255),
type varchar(255),
updated_by varchar(255),
primary key (id)
);


create table Domain (
create_date timestamp(6),
update_date timestamp(6),
id uuid not null,
community varchar(255),
created_by varchar(255),
description varchar(255),
icon varchar(255),
name varchar(255),
tags varchar(255),
updated_by varchar(255),
primary key (id)
);


create table domain_profiles (
domain_id uuid not null,
profile_id uuid not null
);


create table Exercise (
points integer,
create_date timestamp(6),
update_date timestamp(6),
id uuid not null,
lab_id uuid,
correctAnswer TEXT,
created_by varchar(255),
hint TEXT,
optionsJson TEXT,
question TEXT,
title varchar(255),
type varchar(255),
updated_by varchar(255),
primary key (id)
);


create table exercise_submission (
correct boolean not null,
earnedPoints integer,
create_date timestamp(6),
submitted_at timestamp(6),
update_date timestamp(6),
exercise_id uuid,
id uuid not null,
user_id uuid,
answer TEXT,
created_by varchar(255),
updated_by varchar(255),
primary key (id)
);


create table ITProfessional (
create_date timestamp(6),
update_date timestamp(6),
domain_id uuid,
id uuid not null,
profile_id uuid,
stage_id uuid,
bio varchar(255),
created_by varchar(255),
fullName varchar(255),
headline varchar(255),
location varchar(255),
photoUrl varchar(255),
updated_by varchar(255),
userId varchar(255),
primary key (id)
);


create table Journey (
create_date timestamp(6),
update_date timestamp(6),
id uuid not null,
created_by varchar(255),
description varchar(255),
name varchar(255),
tags varchar(255),
title varchar(255),
updated_by varchar(255),
primary key (id)
);


create table Lab (
difficulty_level smallint check ((difficulty_level between 0 and 2)),
estimated_time_min integer,
has_bonus_tasks boolean,
sequence integer,
create_date timestamp(6),
update_date timestamp(6),
id uuid not null,
url varchar(2048),
youtube varchar(2048),
badge_rule_value varchar(255),
content_html varchar(255),
content_html_url varchar(255),
content_markdown varchar(255),
content_markdown_url varchar(255),
created_by varchar(255),
description varchar(255),
icon varchar(255),
language varchar(255),
name varchar(255) not null,
updated_by varchar(255),
uuid varchar(255),
primary key (id)
);


create table lab_asset (
create_date timestamp(6),
update_date timestamp(6),
id uuid not null,
lab_id uuid,
created_by varchar(255),
path varchar(255),
type varchar(255),
updated_by varchar(255),
primary key (id)
);


create table lab_progress (
completed boolean,
progress_id uuid not null,
lab_id varchar(255) not null,
primary key (progress_id, lab_id)
);


create table Layer (
create_date timestamp(6),
update_date timestamp(6),
bootcamp_id uuid,
id uuid not null,
created_by varchar(255),
name varchar(255),
type varchar(255),
updated_by varchar(255),
primary key (id)
);


create table layer_progress (
completed boolean not null,
create_date timestamp(6),
earned_points bigint,
update_date timestamp(6),
bootcamp_progress_id uuid not null,
id uuid not null,
layer_id uuid not null,
comments varchar(255),
created_by varchar(255),
updated_by varchar(255),
primary key (id)
);


create table Learning_track (
difficulty_level smallint check ((difficulty_level between 0 and 2)),
estimated_time_min integer,
reward_points integer,
create_date timestamp(6),
update_date timestamp(6),
domain_id uuid,
id uuid not null,
badge_rule_value varchar(255),
created_by varchar(255),
description TEXT,
icon varchar(255),
name varchar(255) not null,
repoBranch varchar(255),
repoPath varchar(255),
repoUrl varchar(255),
updated_by varchar(255),
uuid varchar(255),
primary key (id)
);


create table learning_track_labs (
lab_id uuid not null,
learning_track_id uuid not null
);


create table learning_track_profiles (
learning_track_id uuid not null,
profile_id uuid not null
);


create table Milestone (
required_points integer,
sequence integer,
skippable boolean,
create_date timestamp(6),
update_date timestamp(6),
id uuid not null,
stage_id uuid,
badge_rule_value varchar(255),
created_by varchar(255),
description varchar(255),
name varchar(255),
updated_by varchar(255),
primary key (id)
);


create table milestone_activity (
activity_id uuid not null,
milestone_id uuid not null
);


create table Module (
create_date timestamp(6),
update_date timestamp(6),
id uuid not null,
layer_id uuid,
badge_rule_value varchar(255),
created_by varchar(255),
description varchar(255),
moduleId varchar(255),
name varchar(255),
type varchar(255),
updated_by varchar(255),
primary key (id)
);


create table Module_linkedLabs (
Module_id uuid not null,
linkedLabs varchar(255)
);


create table Module_objectives (
Module_id uuid not null,
objectives varchar(255)
);


create table module_progress (
completed boolean not null,
create_date timestamp(6),
earned_points bigint,
update_date timestamp(6),
bootcamp_progress_id uuid not null,
id uuid not null,
layer_progress_id uuid not null,
module_id uuid not null,
comments varchar(255),
created_by varchar(255),
updated_by varchar(255),
primary key (id)
);


create table Profile (
create_date timestamp(6),
update_date timestamp(6),
id uuid not null,
created_by varchar(255),
description varchar(255),
name varchar(255),
skills varchar(255),
tags varchar(255),
updated_by varchar(255),
primary key (id)
);


create table quiz_scores (
score integer,
progress_id uuid not null,
module_id varchar(255) not null,
primary key (progress_id, module_id)
);


create table Stage (
sequence integer,
create_date timestamp(6),
update_date timestamp(6),
id uuid not null,
journey_id uuid,
badge_rule_value varchar(255),
created_by varchar(255),
description varchar(255),
icon varchar(255),
name varchar(255),
tags varchar(255),
updated_by varchar(255),
primary key (id)
);


create table Team (
create_date timestamp(6),
update_date timestamp(6),
admin_user_id uuid,
id uuid not null,
created_by varchar(255),
name varchar(255),
updated_by varchar(255),
primary key (id)
);


create table team_members (
team_id uuid not null,
user_id uuid not null
);


create table user_badges (
create_date timestamp(6),
earnedAt timestamp(6),
update_date timestamp(6),
badge_id uuid,
id uuid not null,
user_id uuid,
created_by varchar(255),
source varchar(255) check ((source in ('AUTO','MANUAL'))),
updated_by varchar(255),
primary key (id)
);


create table user_bootcamp (
create_date timestamp(6),
earned_points bigint,
end_date timestamp(6),
join_date timestamp(6),
update_date timestamp(6),
bootcamp_start_id uuid,
id uuid not null,
user_id uuid,
created_by varchar(255),
updated_by varchar(255),
primary key (id)
);


create table user_lab_progress (
completed boolean,
completed_at timestamp(6),
create_date timestamp(6),
earned_points bigint,
start_date timestamp(6),
update_date timestamp(6),
id uuid not null,
lab_id uuid,
track_id uuid,
user_id uuid,
created_by varchar(255),
updated_by varchar(255),
primary key (id)
);


create table user_profiles (
profile_id uuid not null,
user_id uuid not null
);


create table user_progress (
closeDate timestamp(6),
create_date timestamp(6),
earned_points bigint,
startDate timestamp(6),
update_date timestamp(6),
id uuid not null,
milestone_id uuid,
nextMilestone_id uuid,
prevProgress_id uuid,
user_id uuid,
created_by varchar(255),
status varchar(255),
updated_by varchar(255),
primary key (id)
);


create table user_tracks (
completed boolean,
enrolled boolean,
create_date timestamp(6),
earned_points bigint,
enrolled_at timestamp(6),
finished_at timestamp(6),
update_date timestamp(6),
id uuid not null,
learning_track_id uuid,
user_id uuid,
created_by varchar(255),
updated_by varchar(255),
primary key (id)
);


alter table if exists bootcamp 
   add constraint FKiwtqmsrus5aqhidbfw4kof6an 
   foreign key (mentor_id) 
   references ITProfessional;


alter table if exists Bootcamp_audience 
   add constraint FKhdgg36n7bnfuxm5d596p7i490 
   foreign key (Bootcamp_id) 
   references bootcamp;


alter table if exists Bootcamp_outcomes 
   add constraint FK631pw9tv7xw9pfydwol64jo0k 
   foreign key (Bootcamp_id) 
   references bootcamp;


alter table if exists bootcamp_progress 
   add constraint FKfnrgjwxgw1ns85fqxv3k1i28 
   foreign key (bootcamp_start_id) 
   references bootcamp_start;


alter table if exists bootcamp_start 
   add constraint FKtga8raoxdt3ah6fg5ax1x2etp 
   foreign key (bootcamp_id) 
   references bootcamp;


alter table if exists bootcamp_start 
   add constraint FK86s7i1aas7bg6eejeld27o7sn 
   foreign key (user_id) 
   references ITProfessional;


alter table if exists Component 
   add constraint FKf89a6s1x9r2l442jf1oulqx97 
   foreign key (module_id) 
   references Module;


alter table if exists domain_profiles 
   add constraint FK2e2n7bq6u0kljqursrlpqn92d 
   foreign key (profile_id) 
   references Profile;


alter table if exists domain_profiles 
   add constraint FK4kf3vx7puo92iqav9hni7g9va 
   foreign key (domain_id) 
   references Domain;


alter table if exists Exercise 
   add constraint FK9kigqx35t54fjxvs1jrvfuhu9 
   foreign key (lab_id) 
   references Lab;


alter table if exists exercise_submission 
   add constraint FKnwo64nqqgi4rqslllyg3rot4s 
   foreign key (exercise_id) 
   references Exercise;


alter table if exists exercise_submission 
   add constraint FK3kteecvl5757bbeu34jx9a30o 
   foreign key (user_id) 
   references ITProfessional;


alter table if exists ITProfessional 
   add constraint FKftrdtq3b1ltcna6w62p3po9sn 
   foreign key (domain_id) 
   references Domain;


alter table if exists ITProfessional 
   add constraint FKb7srl2xe4u6jda4dro4en2y0 
   foreign key (profile_id) 
   references Profile;


alter table if exists ITProfessional 
   add constraint FKnkoiep3ruqt7rk8432jffwx7x 
   foreign key (stage_id) 
   references Stage;


alter table if exists lab_asset 
   add constraint FK1irxdm6f9xch51c2e9l18i0j9 
   foreign key (lab_id) 
   references Lab;


alter table if exists lab_progress 
   add constraint FKicdcaj2mgfu4j4w92e35mqo6a 
   foreign key (progress_id) 
   references bootcamp_progress;


alter table if exists Layer 
   add constraint FKc087jtwxxsp4638h7wyrvf8wa 
   foreign key (bootcamp_id) 
   references bootcamp;


alter table if exists layer_progress 
   add constraint FKp1etda60u54aj7sb7dxj25n7p 
   foreign key (bootcamp_progress_id) 
   references bootcamp_progress;


alter table if exists layer_progress 
   add constraint FKkgi7kdu631h4gsm1m1ul5mox3 
   foreign key (layer_id) 
   references Layer;


alter table if exists Learning_track 
   add constraint FKbil125haexu4ylhsdtvk70d9i 
   foreign key (domain_id) 
   references Domain;


alter table if exists learning_track_labs 
   add constraint FKospbncs70biev3os8ga5xmti8 
   foreign key (lab_id) 
   references Lab;


alter table if exists learning_track_labs 
   add constraint FKa6pwaypv67cba0uys77wtukg1 
   foreign key (learning_track_id) 
   references Learning_track;


alter table if exists learning_track_profiles 
   add constraint FK29g154tjx31ptnjec294a6hnu 
   foreign key (profile_id) 
   references Profile;


alter table if exists learning_track_profiles 
   add constraint FK3fyb0e3fwpmfa0mdri0lp2s0u 
   foreign key (learning_track_id) 
   references Learning_track;


alter table if exists Milestone 
   add constraint FKqyxp45gfysta6fsjoy2h154dt 
   foreign key (stage_id) 
   references Stage;


alter table if exists milestone_activity 
   add constraint FKt1jfnpvtwdcn4tyj9eqwwy1j7 
   foreign key (activity_id) 
   references Activity;


alter table if exists milestone_activity 
   add constraint FK57peced4amllt7s7fxw73tq3m 
   foreign key (milestone_id) 
   references Milestone;


alter table if exists Module 
   add constraint FKa15al6xmylw1c76k2vcg4ptuy 
   foreign key (layer_id) 
   references Layer;


alter table if exists Module_linkedLabs 
   add constraint FK2wn6twalcq2ad61hfm3rjw7oe 
   foreign key (Module_id) 
   references Module;


alter table if exists Module_objectives 
   add constraint FK9sstavpm1k1abka8aunepcpo4 
   foreign key (Module_id) 
   references Module;


alter table if exists module_progress 
   add constraint FK5n549fev1c0nb3v2h19s3b0q1 
   foreign key (bootcamp_progress_id) 
   references bootcamp_progress;


alter table if exists module_progress 
   add constraint FK8rniqgavycnkgpurlstfs006t 
   foreign key (layer_progress_id) 
   references layer_progress;


alter table if exists module_progress 
   add constraint FK3fs9fpki0rgajlq2deglhd4iv 
   foreign key (module_id) 
   references Module;


alter table if exists quiz_scores 
   add constraint FKnuqxjba16te8l5di56awvecwd 
   foreign key (progress_id) 
   references bootcamp_progress;


alter table if exists Stage 
   add constraint FKgele0tolrm3vasjjl5wlmgibb 
   foreign key (journey_id) 
   references Journey;


alter table if exists Team 
   add constraint FKlqy96qevwe86hyy1i8od3cp7m 
   foreign key (admin_user_id) 
   references ITProfessional;


alter table if exists team_members 
   add constraint FK72okgoj98edb4csoa8mxrnc9v 
   foreign key (user_id) 
   references ITProfessional;


alter table if exists team_members 
   add constraint FKmts7ykdj28ovrhahihcsk608m 
   foreign key (team_id) 
   references Team;


alter table if exists user_badges 
   add constraint FK9q0t8irte2td6jdj4khgsokgx 
   foreign key (badge_id) 
   references Badge;


alter table if exists user_badges 
   add constraint FKporng32adnn89itjlx8ufs4a6 
   foreign key (user_id) 
   references ITProfessional;


alter table if exists user_bootcamp 
   add constraint FKk2xadtetod6s51o7njpp6exbf 
   foreign key (bootcamp_start_id) 
   references bootcamp_start;


alter table if exists user_bootcamp 
   add constraint FKlpajl0ap2gfkegy3gbe2dokvl 
   foreign key (user_id) 
   references ITProfessional;


alter table if exists user_lab_progress 
   add constraint FK49kqdfqxspflfwlij4ilvt2vb 
   foreign key (lab_id) 
   references Lab;


alter table if exists user_lab_progress 
   add constraint FKahw6g8wkfdu6q6jakiw7iu1s7 
   foreign key (track_id) 
   references Learning_track;


alter table if exists user_lab_progress 
   add constraint FK22r1dowohpvik6y2s4w1yy14 
   foreign key (user_id) 
   references ITProfessional;


alter table if exists user_profiles 
   add constraint FK5nmh45aaincvpcdmxf585j2pv 
   foreign key (profile_id) 
   references Profile;


alter table if exists user_profiles 
   add constraint FKog0qe0nleoodqy8oc3vepai1d 
   foreign key (user_id) 
   references ITProfessional;


alter table if exists user_progress 
   add constraint FKcmcx6qvm1ohifs57wmyf1a8vy 
   foreign key (milestone_id) 
   references Milestone;


alter table if exists user_progress 
   add constraint FKpoj0002pf5w45echdxbi402r6 
   foreign key (nextMilestone_id) 
   references Milestone;


alter table if exists user_progress 
   add constraint FKg3p162dxbyj272doy00omc8l6 
   foreign key (prevProgress_id) 
   references user_progress;


alter table if exists user_progress 
   add constraint FKlmnhxpeqlaovp1ocv2eobavic 
   foreign key (user_id) 
   references ITProfessional;


alter table if exists user_tracks 
   add constraint FK6sbhne7x76exoeeh2hmuim1c6 
   foreign key (learning_track_id) 
   references Learning_track;


alter table if exists user_tracks 
   add constraint FK5v8uu8omdalrydt9hby50shoa 
   foreign key (user_id) 
   references ITProfessional;