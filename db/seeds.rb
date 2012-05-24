# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# encoding: utf-8
#Themes
Theme.create(:id => '1',:theme_code => 'MET001', :theme_description => 'Business')
Theme.create(:id => '2',:theme_code => 'SKL001', :theme_description => 'Skills')
Theme.create(:id => '3',:theme_code => 'ORG001', :theme_description => 'Organisation')

#module_groups
ModuleGroup.create(:id => '1',:module_group_code => 'MON001', :module_group_description =>'Electronic payment',
  :audience => 'Public', :theme_id =>'1')
ModuleGroup.create(:id => '2',:module_group_code => 'PCT001', :module_group_description =>'PowerCARD Core (tools)',
  :audience => 'Public', :theme_id =>'1')
ModuleGroup.create(:id => '3',:module_group_code => 'ISS001', :module_group_description =>'Issuing',
  :audience => 'Public', :theme_id =>'1')
ModuleGroup.create(:id => '4',:module_group_code => 'ACQ001', :module_group_description =>'Acquiring',
  :audience => 'Public', :theme_id =>'1')
ModuleGroup.create(:id => '5',:module_group_code => 'DEV001', :module_group_description =>'Development',
  :audience => 'Public', :theme_id =>'2')
ModuleGroup.create(:id => '6',:module_group_code => 'PWC001', :module_group_description =>'Basic knowledge',
  :audience => 'Public', :theme_id =>'1')
ModuleGroup.create(:id => '7',:module_group_code => 'SWI001', :module_group_description =>'PowerCARD Switch',
  :audience => 'Public', :theme_id =>'1')
ModuleGroup.create(:id => '8',:module_group_code => 'CMP001', :module_group_description =>'Regles d\'or Comportement',
  :audience => 'Private', :company_id =>'1', :theme_id =>'3')
ModuleGroup.create(:id => '9',:module_group_code => 'PRC001', :module_group_description =>'Processus',
:audience => 'Private', :company_id =>'1', :theme_id =>'3')
  
#subjects previously called modules, which is reserved word
Subject.create(:id=> '1', :subject_code =>'AC0200',:subject_description => 'Merchant',:subject_way => '0200',
:module_group_id => '4')
Subject.create(:id=> '2', :subject_code =>'IS0101',:subject_description => 'Issuing debit card',:subject_way => '0101',
:module_group_id => '3')
Subject.create(:id=> '3', :subject_code =>'IS0102',:subject_description => 'Issuing credit card',:subject_way => '0102',
:module_group_id => '3')
Subject.create(:id=> '4', :subject_code =>'PW0000',:subject_description => 'Basic knowledge of PWC',:subject_way => '0000',
:module_group_id => '6')
Subject.create(:id=> '5', :subject_code =>'AC0500',:subject_description => 'Transaction',:subject_way => '0500',
:module_group_id => '4')
Subject.create(:id=> '6', :subject_code =>'PC0700',:subject_description => 'Common-Functional administration',:subject_way => '0700',
:module_group_id => '2')
Subject.create(:id=> '7', :subject_code =>'MO0100',:subject_description => 'Electronic Payment',:subject_way => '0100',
:module_group_id => '1')
Subject.create(:id=> '8', :subject_code =>'SW1000',:subject_description => 'Switch - authorization',:subject_way => '0100',
:module_group_id => '7')
Subject.create(:id=> '9', :subject_code =>'CM5000',:subject_description => 'Organization',:subject_way => '0100',
:audience => 'Private', :company_id =>'1', :module_group_id => '8')
Subject.create(:id=> '10', :subject_code =>'PR4000',:subject_description => 'HPS internal process',:subject_way => '4000',
:module_group_id => '9')


#companies
Company.create( :id => '1', :code => 'HPS', :name =>'Hightech Payment System' ,
			:relationship => 'Internal',
			:currency_id =>'',
			:language => 'French' , 
			:contact_principal_id => '', 
			#:Sales_contact_id => nill, 
			#:blocked => '',
			:country_id => '504',
			:phone => '' , :email => '', 
			:weekend_day_1 => '6' , :weekend_day_2 => '7',
   			:management_flag => true , :memo => 'test')


#Courses
Course.create( :id => '1',:course_code => 'AC020001',
  :course_title =>'Module Merchant', :course_introduction => '',:course_description => '',
  :course_training_material_ref => '020001', :course_planned_duration => '3',
  :subject_id => '1', :course_status => 'Available',
  :course_audience => 'Public', :course_order => '3', :course_type => 'Presentation')

Course.create(   :id => '2',:course_code => 'IS010101',
  :course_title =>'Presentation and Definition parameters debit cards',
  :course_introduction => '',:course_description => 'illustrate the general Flow for issuing cards, the parameters and data involved in the process. At the end of the course, the trainee will have a global understanding of the card issuing process, he/she should be able to set up the needed parameters and run the daily operations of a card issuing center. A brief description of the end of day batches will also be given.This course is intended for people who need to set up the parameters of a card, people who need to de?ne the card issue strategy and operational administrators / managers.',
  :course_training_material_ref => '010101', :course_planned_duration => '6',
  :subject_id => '2', :course_status => 'Available',
  :course_audience => 'Public',
  #                  :company_id => null ,
  :course_order => '1' , :course_type => 'Presentation')
Course.create(   :id => '3',:course_code => 'IS010201',
  :course_title =>'Presentation credit parameters',
  :course_introduction => '',:course_description => 'Describe the account database structure in PowerCArD by introducing the main features and functions of the module. At the end of this session, the trainee will have a clear understanding of the credit transaction process and the credit revolving database structure. The trainee will also get familiar with the process and batches related to the credit revolving function.',
  :course_training_material_ref => '010201', :course_planned_duration => '6',
  :subject_id => '3', :course_status => 'Available',
  :course_audience => 'Public',
  #                  :company_id => null,
  :course_order => '2' , :course_type => 'Presentation')
Course.create(   :id => '4',:course_code => 'PW000005',
  :course_title =>'Database Architecture PowerCARD Issuer',
  :course_introduction => '',:course_description => 'Explains the structure in matter of tables of the issuer database',
  :course_training_material_ref => '000005', :course_planned_duration => '3',
  :subject_id => '4', :course_status => 'Available',
  :course_audience => 'Public',
  #                  :company_id => null,
  :course_order => '5' , :course_type => 'Presentation')

Course.create(   :id => '5',:course_code => 'PW000006',
  :course_title =>'Database Architecture PowerCARD Acquirer',
  :course_introduction => '',:course_description => 'Explains the structure in matter of tables of the Acquiring database',
  :course_training_material_ref => '000006', :course_planned_duration => '3',
  :subject_id => '4', :course_status => 'Available',
  :course_audience => 'Public',
  #                  :company_id => null,
  :course_order => '6' , :course_type => 'Presentation')

Course.create( :id => '6',:course_code => 'AC050009',
  :course_title =>'Transaction flow', :course_introduction => '',:course_description => '',
  :course_training_material_ref => '050009', :course_planned_duration => '1.5',
  :subject_id => '1', :course_status => 'Available',
  :course_audience => 'Public', 
  :course_order => '7', :course_type => 'Presentation')
Course.create( :id => '7',:course_code => 'PC070003',
  :course_title =>'User and Batch definition', :course_introduction => '',:course_description => '',
  :course_training_material_ref => '070003', :course_planned_duration => '2',
  :subject_id => '6', :course_status => 'Available',
  :course_audience => 'Public', 
  :course_order => '8', :course_type => 'Presentation')
Course.create( :id => '8',:course_code => 'MO010001',
  :course_title =>'Acteurs monétiques', :course_introduction => '',:course_description => '',
  :course_training_material_ref => '010001_Acteurs monétiques', :course_planned_duration => '3',
  :subject_id => '7', :course_status => 'Available',
  :course_audience => 'Private', 
  :company_id => '1',
  :course_order => '9', :course_type => 'Presentation')
Course.create( :id => '9',:course_code => 'MO010002',
  :course_title =>'Carte et terminaux', :course_introduction => '',:course_description => '',
  :course_training_material_ref => '010002_Carte et terminaux', :course_planned_duration => '3',
  :subject_id => '7', :course_status => 'Available',
  :course_audience => 'Private',
  :company_id => '1', 
  :course_order => '10', :course_type => 'Presentation')
Course.create( :id => '10',:course_code => 'MO010003',
  :course_title =>'010003_Flux d\'une transaction', :course_introduction => '',:course_description => '',
  :course_training_material_ref => '010003_Flux', :course_planned_duration => '3',
  :subject_id => '7', :course_status => 'Available',
  :course_audience => 'Private',
  :company_id => '1', 
  :course_order => '11', :course_type => 'E-learning')
Course.create( :id => '11',:course_code => 'PW000004',
  :course_title =>'General Parameters', :course_introduction => '',:course_description => '',
  :course_training_material_ref => '000002', :course_planned_duration => '3',
  :subject_id => '4', :course_status => 'Available',
  :course_audience => 'Public',
  #:company_id => nil,  
  :course_order => '12', :course_type => 'Presentation')
Course.create( :id => '12',:course_code => 'PW000002',
  :course_title =>' Structure de la BD PwCD	', :course_introduction => '',:course_description => '',
  :course_training_material_ref => '000002', :course_planned_duration => '3',
  :subject_id => '4', :course_status => 'Available',
  :course_audience => 'Public',
  #:company_id => nil,  
  :course_order => '13', :course_type => 'Presentation')
Course.create( :id => '13',:course_code => 'IS010108',
  :course_title =>'TP Paramètres carte débits', :course_introduction => '',:course_description => '',
  :course_training_material_ref => '010108', :course_planned_duration => '3',
  :subject_id => '2', :course_status => 'Available',
  :course_audience => 'Public',
  #:company_id => nil,  
  :course_order => '14', :course_type => 'Workshop')

Course.create( :id => '14',:course_code => 'AC020006',
  :course_title =>'TP Module Merchant', :course_introduction => '',:course_description => '',
  :course_training_material_ref => '020001', :course_planned_duration => '3',
  :subject_id => '1', :course_status => 'Available',
  :course_audience => 'Public', :course_order => '4', :course_type => 'Workshop')

Course.create( :id => '15',:course_code => 'SW100001',
  :course_title =>'Autorisation - principe de base', 
	:course_introduction => 'Details paramètrage (en faisant reference à une documentation sur les tools communs)',
	:course_description => '',
  :course_training_material_ref => '100001', :course_planned_duration => '3',
  :subject_id => '8', :course_status => 'Available',
  :course_audience => 'Public',
  #:company_id => nil,  
  :course_order => '15', :course_type => 'Presentation')
Course.create( :id => '16',:course_code => 'SW100004',
  :course_title =>'TP- Autorisation', :course_introduction => '',:course_description => '',
  :course_training_material_ref => '100004', :course_planned_duration => '3',
  :subject_id => '8', :course_status => 'Available',
  :course_audience => 'Public',
  #:company_id => nil,  
  :course_order => '16', :course_type => 'Workshop')
Course.create( :id => '17',:course_code => 'AC050006',
  :course_title =>'Module transaction', :course_introduction => '',:course_description => '',
  :course_training_material_ref => '050006', :course_planned_duration => '3',
  :subject_id => '5', :course_status => 'Available',
  :course_audience => 'Public',
  #:company_id => nil,  
  :course_order => '17', :course_type => 'Presentation')
Course.create( :id => '18',:course_code => 'AC050008',
  :course_title =>'TP- Transaction', :course_introduction => '',:course_description => '',
  :course_training_material_ref => '050008', :course_planned_duration => '3',
  :subject_id => '5', :course_status => 'Available',
  :course_audience => 'Public',
  #:company_id => nil,  
  :course_order => '18', :course_type => 'Workshop')
Course.create(   :id => '19',:course_code => 'IS010224',
  :course_title =>'Principes de base -credit revolving',
  :course_introduction => '',:course_description => 'introduction to Credit revolving principles without going into details about Powercard parameters.',
  :course_training_material_ref => '010224', :course_planned_duration => '3',
  :subject_id => '3', :course_status => 'Available',
  :course_audience => 'Private',
  :company_id => '1',
  :course_order => '3' , :course_type => 'E-learning')
Course.create(   :id => '20',:course_code => 'CM500002',
  :course_title =>'Regles d or',
#  :course_introduction => '',:course_description => '',
  :course_training_material_ref => '500002', :course_planned_duration => '3',
  :subject_id => '3', :course_status => 'Available',
  :course_audience => 'Private',
  :company_id => '1',
  :course_order => '21' , :course_type => 'Presentation')

Course.create(   :id => '21',:course_code => 'CM500001',
  :course_title =>'Presentation Entreprise',
#  :course_introduction => '',:course_description => '',
  :course_training_material_ref => '500002', :course_planned_duration => '2',
  :subject_id => '3', :course_status => 'Available',
  :course_audience => 'Private',
  :company_id => '1',
  :course_order => '21' , :course_type => 'Presentation') 

Course.create(   :id => '22',:course_code => 'PR400003',
  :course_title =>'Processus interne',
  :course_introduction => '',:course_description => '',
  :course_training_material_ref => '400003_ProcessusInternes', :course_planned_duration => '1',
  :subject_id => '10', :course_status => 'Available',
  :course_audience => 'Private',
  :company_id => '1',
  :course_order => '22' , :course_type => 'Presentation') 
    
   
#Programs
Program.create( :program_code => 'Prg1' , :program_title => 'First level Support' , :program_order => '2' ,
              :program_description => 'This module is specially designed for people who will be the ?rst line support of a bank, at the end the participants will be able to analyse the root cause of an issue that was raised during the day. At the end participants will be able to give accurate data and traces to HPS support team so they can  quickly resolve an issue.',
              :program_audience => 'Public', :program_status => 'Available', :program_duration => '7',:program_unit => 'Days')
Program.create(:id =>'2', :program_code => 'certMCI', :program_title => 'Preparation to Mastercard certification',:program_order => '3',
              :program_description => 'Participant will learn how to use the different simulators in order to be well prepared for their certification of MasterCard',
              :program_audience => 'Public', :program_status => 'Available', :program_duration => '4',:program_unit => 'Days')
Program.create(:id =>'3', :program_code => 'certVISA', :program_title => 'Preparation to VISA certification',:program_order => '4',
              :program_description => 'Participant will learn how to use the different simulators in order to be well prepared for their certification of VISA',
              :program_audience => 'Public', :program_status => 'Available', :program_duration => '4',:program_unit => 'Days')

Program.create(:id =>'4', :program_code => 'new recruit', :program_title => 'Program insertion nouvelles recrues',:program_order => '1',
              :program_description => 'Program for the new recruits of HPS to get an introduction to our business and first hands on PowerCARD',
              :program_audience => 'Private', :company_id => '1',:program_status => 'Available', 
              :program_duration => '7',:program_unit => 'Days')         


#Programs_courses
ProgramCourse.create(:course_id => '7', :program_id => '1', :duration => '0.5',
					:unit => 'Day(s)' ,:program_course_order=> '4')
ProgramCourse.create(:course_id => '6', :program_id => '1', :duration => '0.5',
					:unit => 'Day(s)' ,:program_course_order=> '3')
ProgramCourse.create(:course_id => '5', :program_id => '1', :duration => '0.25',
					:unit => 'Day(s)' ,:program_course_order=> '2')
ProgramCourse.create(:course_id => '4', :program_id => '1', :duration => '0.25',
					:unit => 'Day(s)' ,:program_course_order=> '1')
ProgramCourse.create(:course_id => '8', :program_id => '4', :duration => '0.5',
					:unit => 'Day(s)' ,:program_course_order=> '1')
ProgramCourse.create(:course_id => '9', :program_id => '4', :duration => '0.5',
					:unit => 'Day(s)' ,:program_course_order=> '2')
ProgramCourse.create(:course_id => '10', :program_id => '4', :duration => '0.5',
					:unit => 'Day(s)' ,:program_course_order=> '3')
ProgramCourse.create(:course_id => '11', :program_id => '4', :duration => '0.5',
					:unit => 'Day(s)' ,:program_course_order=> '4')
ProgramCourse.create(:course_id => '12', :program_id => '4', :duration => '0.5',
					:unit => 'Day(s)' ,:program_course_order=> '5')
ProgramCourse.create(:course_id => '2', :program_id => '4', :duration => '0.5',
					:unit => 'Day(s)' ,:program_course_order=> '6')
ProgramCourse.create(:course_id => '13', :program_id => '4', :duration => '0.5',
					:unit => 'Day(s)' ,:program_course_order=> '7')
ProgramCourse.create(:course_id => '1', :program_id => '4', :duration => '0.5',
					:unit => 'Day(s)' ,:program_course_order=> '8')
ProgramCourse.create(:course_id => '14', :program_id => '4', :duration => '0.5',
					:unit => 'Day(s)' ,:program_course_order=> '9')
ProgramCourse.create(:course_id => '15', :program_id => '4', :duration => '0.5',
					:unit => 'Day(s)' ,:program_course_order=> '10')
ProgramCourse.create(:course_id => '16', :program_id => '4', :duration => '0.5',
					:unit => 'Day(s)' ,:program_course_order=> '11')
ProgramCourse.create(:course_id => '17', :program_id => '4', :duration => '0.5',
					:unit => 'Day(s)' ,:program_course_order=> '12')	
ProgramCourse.create(:course_id => '18', :program_id => '4', :duration => '0.5',
					:unit => 'Day(s)' ,:program_course_order=> '13')
ProgramCourse.create(:course_id => '7', :program_id => '4', :duration => '0.5',
					:unit => 'Day(s)' ,:program_course_order=> '14')
ProgramCourse.create(:course_id => '19', :program_id => '4', :duration => '0.5',
					:unit => 'Day(s)' ,:program_course_order=> '15')
ProgramCourse.create(:course_id => '20', :program_id => '4', :duration => '0.5',
					:unit => 'Day(s)' ,:program_course_order=> '20')
ProgramCourse.create(:course_id => '21', :program_id => '4', :duration => '0.5',
					:unit => 'Day(s)' ,:program_course_order=> '21')		
ProgramCourse.create(:course_id => '22', :program_id => '4', :duration => '0.5',
					:unit => 'Day(s)' ,:program_course_order=> '22')
#department
Department.create(:id=> '1', :company_id => '1', :level_1 => 'Direction Générale',
					:hierarchy_level => '0')
Department.create(:id=> '2', :company_id => '1', :level_1 => 'Pôle Production',
					:hierarchy_level => '1')
Department.create(:id=> '3', :company_id => '1', :level_1 => 'Pôle Production',
				  :level_2 => 'HPS Academy', :hierarchy_level => '2')
Department.create(:id=> '4', :company_id => '1', :level_1 => 'Pôle Production',
				  :level_2 => 'HPS Academy',
				  :department => 'HPS Academy',:hierarchy_level => '3')				    
Department.create(:id=> '5', :company_id => '1', :level_1 => 'Pôle Production',
				  :level_2 => 'Produit',
				  :hierarchy_level => '2')
Department.create(:id=> '6', :company_id => '1', :level_1 => 'Pôle Production',
				  :level_2 => 'Produit',
				  :department => 'Produit',
				  :hierarchy_level => '3')



#users
User.create(:id =>'1' , :first_name => 'Mohamed' , 
			#:middle_name => null,
			 :last_name => 'Horani',
  			#:user_code => null ,
  			:acronym => 'SHO', :email => 'mohamed.horani@hps.ma',
			:email_status => '5' , :recruited_at => Date.strptime("{ 1998, 1, 1 }", "{ %Y, %m, %d }"),
      		:status => 'Permanent', :title => 'President Directeur General',
 			:department_id => '1',
			:manager_id =>'', 
			:academy_flag => false, :manager_flag => true,
			:trainer_flag => false, :hierarchy_level=> '0', :company_id => '1'	)

User.create(:id =>'2' , :first_name => 'Mohamed' , 
			#:middle_name => null,
			 :last_name => 'Goudrar',
  			#:user_code => null ,
  			:acronym => 'MGO', :email => 'mohamed.goudrar@hps.ma',
			:email_status => '5' , :recruited_at => Date.strptime("{ 1995, 6, 1 }", "{ %Y, %m, %d }"),
      		:status => 'Permanent', :title => 'Directeur de pole',
 			:department_id => '2',
			:manager_id =>'1', 
			:academy_flag => false, :manager_flag => true,
			:trainer_flag => false, :hierarchy_level=> '1', :company_id => '1'	)			
User.create(:id =>'3' , :first_name => 'Ghizlane' , 
			#:middle_name => null,
			 :last_name => 'Benlamlih',
  			:user_code => 'Gbenlamlih',
  			:acronym => 'GBE', :email => 'ghizlane.benlamlih@hps.ma',
			:email_status => '5' , :recruited_at => Date.strptime("{ 1996, 5, 20 }", "{ %Y, %m, %d }"),
      		:status => 'Permanent', :title => 'Directeur HPS Academy',
 			:department_id => '3',
			:manager_id =>'2', 
			:academy_flag => true, :manager_flag => true,
			:trainer_flag => true, :hierarchy_level=> '2', :company_id => '1'	)	
User.create(:id =>'4' , :first_name => 'Hatim' , 
			:middle_name => 'Frederic',
			 :last_name => 'Richel',
  			:user_code => 'hrichel',
  			:acronym => 'HFR', :email => 'hatim.richel@hps.ma',
			:email_status => '5' , :recruited_at => Date.strptime("{ 2009, 3, 23 }", "{ %Y, %m, %d }"),
      		:status => 'Permanent', :title => 'Formateur',
 			:department_id => '4',
			:manager_id =>'3', 
			:academy_flag => true, :manager_flag => false,
			:trainer_flag => true, :hierarchy_level=> '3', :company_id => '1')	
User.create(:id =>'5' , :first_name => 'Abdelkrim' , 
			#:middle_name => null,
			 :last_name => 'Takatart',
  			:user_code => 'Atakatart',
  			:acronym => 'ATA', :email => 'abdelkrim.takatart@hps.ma',
			:email_status => '5' , :recruited_at => Date.strptime("{ 1995, 8, 15 }", "{ %Y, %m, %d }"),
      		:status => 'Permanent', :title => 'Directeur Produits',
 			:department_id => '5',
			:manager_id =>'2', 
			:academy_flag => false, :manager_flag => true,
			:trainer_flag => true, :hierarchy_level=> '2', :company_id => '1'	)
User.create(:id =>'6' , :first_name => 'Sara' , 
			#:middle_name => null,
			 :last_name => 'Maalal',
  			:user_code => 'smaalal',
  			:acronym => 'SML', :email => 'sara.maalal@hps.ma',
			:email_status => '5' , :recruited_at => Date.strptime("{ 2009, 12, 7 }", "{ %Y, %m, %d }"),
      		:status => 'Permanent', :title => 'Ingenieur developpement Junior',
 			:department_id => '5',
			:manager_id =>'5', 
			:academy_flag => false, :manager_flag => false,
			:trainer_flag => false, :hierarchy_level=> '3', :company_id => '1'	)
User.create(:id =>'7' , :first_name => 'Morad' , 
			#:middle_name => null,
			 :last_name => 'Jennane',
  			:user_code => 'mjennane',
  			:acronym => 'MJE', :email => 'morad.jennane@hps.ma',
			:email_status => '5' , :recruited_at => Date.strptime("{ 2010, 01, 01 }", "{ %Y, %m, %d }"),
      		:status => 'Permanent', :title => 'Expert',
 			:department_id => '5',
			:manager_id =>'5', 
			:academy_flag => false, :manager_flag => false,
			:trainer_flag => true, :hierarchy_level=> '3', :company_id => '1'	)
User.create(:id =>'8' , :first_name => 'Majda' , 
			#:middle_name => '',
			 :last_name => 'Dhaini',
  			:user_code => 'mdhaini',
  			:acronym => 'MDH', :email => 'majda.dhaini@hps.ma',
			:email_status => '5' , :recruited_at => Date.strptime("{ 2010, 8, 01 }", "{ %Y, %m, %d }"),
      		:status => 'Permanent', :title => 'Assistant Formateur',
 			:department_id => '4',
			:manager_id =>'3', 
			:academy_flag => true, :manager_flag => false,
			:trainer_flag => true, :hierarchy_level=> '3', :company_id => '1')

    Location.create( :id =>'1', :code =>'E-learning' ,:description => 'E-learning' ,:capacity =>'999')
    Location.create( :id =>'2', :code =>'Casa' ,:description => 'HPS Casablanca' ,:capacity =>'16')
    Location.create( :id =>'3', :code =>'Onsite' ,:description => 'Customers premises' ,:capacity =>'999')
    Location.create( :id =>'4', :code =>'Dubai' ,:description => 'HPS Dubai' ,:capacity =>'10')
    Location.create( :id =>'5', :code =>'Paris' ,:description => 'HPS Paris' ,:capacity =>'10')


Quote.create( :id => '1',:requested_date => Date.strptime("{ 2011, 01, 1 }", "{ %Y, %m, %d }"),
      		:user_id =>'5', :status =>'Requested', :company_id =>'1',:origin => 'S',
      		:comment => 'test comment Stratégie' , :delay => 'Trimestre 2' ,  
      		:latest_by_date=> Date.strptime("{ 2011, 07, 01 }", "{ %Y, %m, %d }")
			)
Quote.create( :id => '2',:requested_date => Date.strptime("{ 2011, 01, 1 }", "{ %Y, %m, %d }"),
      		:user_id =>'5', :status =>'Requested', :company_id =>'1',:origin => 'E',
      		:comment => 'test comment Entretien individuel' , :delay => 'Trimestre 2' ,  
      		:latest_by_date=> Date.strptime("{ 2011, 07, 01 }", "{ %Y, %m, %d }")
			)
Quote.create( :id => '3',:requested_date => Date.strptime("{ 2011, 04, 1 }", "{ %Y, %m, %d }"),
      		:user_id =>'6', :status =>'Waiting Manager', :company_id =>'1',:origin => 'A',
      		:comment => 'test utilisateur demande un cours' , :delay => 'Trimestre 3' ,  
      		:latest_by_date=> Date.strptime("{ 2011, 10, 01 }", "{ %Y, %m, %d }")
			)						
Quote.create( :id => '4',:requested_date => Date.strptime("{ 2010, 08, 1 }", "{ %Y, %m, %d }"),
      		:user_id =>'3', :status =>'Requested', :company_id =>'1',:origin => 'I',
      		:comment => 'test new recruit' , :delay => 'Trimestre 4' ,  
      		:latest_by_date=> Date.strptime("{ 2011, 01, 01 }", "{ %Y, %m, %d }")
      		)						


          QuoteDetail.create(:id => '1', :quote_id => '1', :course_id =>'3', :user_id => '6',
           			:status => 'Authorised')

           QuoteDetail.create(:id => '2', :quote_id => '1', :course_id =>'15', :user_id => '7',
           			:status => 'Authorised')
           QuoteDetail.create(:id => '3',:quote_id => '1',:course_id =>'16', :user_id => '7',
           			:status => 'Authorised'	)
           QuoteDetail.create(:id => '4',:quote_id => '2',:course_id =>'3', :user_id => '7',
           			:status => 'Authorised'	)
           QuoteDetail.create(:id => '5',:quote_id => '3',:course_id =>'4', :user_id => '6',
           			:status => 'Waiting Manager' )
           QuoteDetail.create(:id => '6',:quote_id => '4',:course_id =>'8', :user_id => '8',
           			:status => 'Present')
           QuoteDetail.create(:id => '7',:quote_id => '4',:course_id =>'9', :user_id => '8',
           			:status => 'Present')
           QuoteDetail.create(:id => '8',:quote_id => '4',:course_id =>'10', :user_id => '8',
           			:status => 'Requested')
           QuoteDetail.create(:id => '9',:quote_id => '4',:course_id =>'11', :user_id => '8',
           			:status => 'Requested')
           QuoteDetail.create(:id => '10',:quote_id => '4',:course_id =>'12', :user_id => '8',
           			:status => 'Requested')			
           QuoteDetail.create(:id => '11',:quote_id => '4',:course_id =>'2', :user_id => '8',
           			:status => 'Requested')						
           QuoteDetail.create(:id => '12',:quote_id => '4',:course_id =>'14', :user_id => '8',
           			:status => 'Requested')						
           QuoteDetail.create(:id => '13',:quote_id => '4',:course_id =>'1', :user_id => '8',
           			:status => 'Requested')						
           QuoteDetail.create(:id => '14',:quote_id => '4',:course_id =>'14', :user_id => '8',
           			:status => 'Requested')						
           QuoteDetail.create(:id => '15',:quote_id => '4',:course_id =>'15', :user_id => '8',
           			:status => 'Requested')						
           QuoteDetail.create(:id => '16',:quote_id => '4',:course_id =>'16', :user_id => '8',
           			:status => 'Requested')						
           QuoteDetail.create(:id => '17',:quote_id => '4',:course_id =>'17', :user_id => '8',
           			:status => 'Requested')						
           QuoteDetail.create(:id => '18',:quote_id => '4',:course_id =>'18', :user_id => '8',
           			:status => 'Requested')						
           QuoteDetail.create(:id => '19',:quote_id => '4',:course_id =>'7', :user_id => '8',
           			:status => 'Requested')						
           QuoteDetail.create(:id => '20',:quote_id => '4',:course_id =>'19', :user_id => '8',
           			:status => 'Requested')						
           QuoteDetail.create(:id => '21',:quote_id => '4',:course_id =>'20', :user_id => '8',
           			:status => 'Planned')						
           QuoteDetail.create(:id => '22',:quote_id => '4',:course_id =>'21', :user_id => '8',
           			:status => 'Planned')						
           QuoteDetail.create(:id => '23',:quote_id => '4',:course_id =>'22', :user_id => '8',
           			:status => 'Planned')
Training.create(:id => '1',:course_id => '8', :training_start_date => Date.strptime("{ 2010, 08, 02 }", "{ %Y, %m, %d }"),
      		:training_end_date => Date.strptime("{ 2010, 08, 02 }", "{ %Y, %m, %d }"),
			:origin => 'I',
			# :description ,
     		:location_id => '1', :user_id => '4',:language=>'FR',:expected_duration => '2', 
     		:effective_duration=> '2' ,:duration_unit => 'h',:planned_participants=>'1',
     		:effective_participants =>'1',:status =>'Present')
Training.create(:id => '2',:course_id => '9', :training_start_date => Date.strptime("{ 2010, 08, 02 }", "{ %Y, %m, %d }"),
      		:training_end_date => Date.strptime("{ 2010, 08, 02 }", "{ %Y, %m, %d }"),
			:origin => 'I',
			# :description ,
     		:location_id => '1', :user_id => '4',:language=>'FR',:expected_duration => '2', 
     		:effective_duration=> '2' ,:duration_unit => 'h',:planned_participants=>'1',
     		:effective_participants =>'1',:status =>'Present')
Training.create(:id => '3',:course_id => '21', :training_start_date => Date.strptime("{ 2011, 04, 01 }", "{ %Y, %m, %d }"),
      		:training_end_date => Date.strptime("{ 2010, 04, 01 }", "{ %Y, %m, %d }"),
			:origin => 'I',
			# :description ,
     		 :location_id => '2', 
     		 #:user_id => '4',
     		 :language=>'FR',:expected_duration => '2', 
     		 #:effective_duration=> '2' ,:duration_unit => 'h',
     		:planned_participants=>'1',
     		#:effective_participants =>'1',
     		:status =>'Planned')
Training.create(:id => '4',:course_id => '22', :training_start_date => Date.strptime("{ 2011, 04, 02 }", "{ %Y, %m, %d }"),
      		:training_end_date => Date.strptime("{ 2010, 04, 02 }", "{ %Y, %m, %d }"),
			:origin => 'I',
			# :description ,
     		:location_id => '2', 
     		#:user_id => '4',
     		:language=>'FR',:expected_duration => '2', 
     		 #:effective_duration=> '2' ,:duration_unit => 'h',
     		:planned_participants=>'1',
     		#:effective_participants =>'1',
     		:status =>'Planned')
Training.create(:id => '5',:course_id => '22', :training_start_date => Date.strptime("{ 2011, 04, 03 }", "{ %Y, %m, %d }"),
      		:training_end_date => Date.strptime("{ 2010, 04, 03 }", "{ %Y, %m, %d }"),
			:origin => 'I',
			# :description ,
     		:location_id => '2', 
     		 #:user_id => '4',
     		 :language=>'FR',:expected_duration => '2', 
     		 #:effective_duration=> '2' ,:duration_unit => 'h',
     		:planned_participants=>'1',
     		#:effective_participants =>'1',
     		:status =>'Planned')
           			
TrainingUser.create(:id => '1',:training_id => '1', :user_id =>'8' ,
		:status =>'Present',:quote_details_id=>'6')
TrainingUser.create(:id => '2',:training_id => '2', :user_id =>'8' ,
		:status =>'Present',:quote_details_id=>'7')
TrainingUser.create(:id => '2',:training_id => '3', :user_id =>'8' ,
		:status =>'waiting Manager',:quote_details_id=>'21')
TrainingUser.create(:id => '3',:training_id => '4', :user_id =>'8' ,
		:status =>'Authorised',:quote_details_id=>'22')
TrainingUser.create(:id => '4',:training_id => '5', :user_id =>'8' ,
		:status =>'waiting Manager',:quote_details_id=>'23')
