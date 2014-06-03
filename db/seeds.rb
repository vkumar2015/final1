User.delete_all
jeff = User.create("uname" => "Jeff Cohen" , "upassword" => "hockey" , "uemail" => "j-cohen@kellogg.northwestern.edu" , "ucountry" => "United States" )
ben = User.create("uname" => "Ben Eng" , "upassword" => "homework" , "uemail" => "b-eng@kellogg.northwestern.edu" , "ucountry" => "United States" )

Hospital.delete_all
nuhealth = Hospital.create("hospname" => "NU Health Center" , "hcountry" => "United States" , "hstate" => "Illinois" , "hzip" => "60208" , "hcity" => "Evanston" , "hphotourl" => "http://www.nuhs.northwestern.edu/evanston/images/nuhs2010a.jpg" , "hyear" => 1965 , "haddress" => "633 Emerson Street, Evanston IL 60208" , "htype" => "primary care" , "hphone" => "8474918100" , "hemail" => "abc@nuhealth.com" , "hurl" => "http://www.nuhs.northwestern.edu/evanston/default.aspx" , "hspecialization1" => "General Checkup" , "hspecialization2" => "Sports" , "hbeds" => 10 , "page_count" => 0 )
uchicagohealth = Hospital.create("hospname" => "UChicago Student Health Service" , "hcountry" => "United States" , "hstate" => "Illinois" , "hzip" => "60637" , "hcity" => "Chicago" , "hphotourl" => "http://healthcare.uchicago.edu/sites/healthcare.uchicago.edu/files/styles/homefeature/public/uploads/images/gargoyle.jpg" , "hyear" => 1975 , "haddress" => "860 East 59th Street, R100 Goldblatt Pavilion Entrance, Chicago, IL 60637" , "htype" => "critial care" , "hphone" => "7737024156" , "hemail" => "abc@uchicagohealth.edu" , "hurl" => "http://healthcare.uchicago.edu/" , "hspecialization1" => "Depression" , "hspecialization2" => "STD" , "hbeds" => 20 , "page_count" => 0 )

Ureviewhosp.delete_all
Ureviewhosp.create("user_id" => jeff["id"] , "hosp_id" => nuhealth["id"] , "hosp_urating" => 2, "hosp_ucontent" => "Its alright if you ask me." , "hosp_uphoto1" => "http://www.nuhs.northwestern.edu/evanston/images/nuhs2010a.jpg"  , "hosp_ureco" => 0 )
Ureviewhosp.create("user_id" => ben["id"] , "hosp_id" => nuhealth["id"] , "hosp_urating" => 4, "hosp_ucontent" => "Its the best." , "hosp_uphoto1" =>  "http://healthcare.uchicago.edu/sites/healthcare.uchicago.edu/files/styles/homefeature/public/uploads/images/gargoyle.jpg" , "hosp_ureco" => 1 )

Doctor.delete_all
james = Doctor.create("dname" => "Dr James" , "dprofile" => "http://en.wikipedia.org/wiki/James_bond" , "dage" => 45 , "dphotourl" => "http://upload.wikimedia.org/wikipedia/en/c/c5/Fleming007impression.jpg" , "dspecialization1" => "Pediatrics" , "dspecialization2" => "NA" , "dwork" => "8 years at San Francisco Hospital", "deducation" => "MD, Stanford University" , "page_count" => 0)
john = Doctor.create("dname" => "Dr John" , "dprofile" => "http://en.wikipedia.org/wiki/Dr._John" , "dage" => 55 , "dphotourl" => "http://upload.wikimedia.org/wikipedia/commons/8/82/Dr._John_2.jpg" , "dspecialization1" => "Psychiatry" , "dspecialization2" => "NA" , "dwork" => "5 years at New York Hospital", "deducation" => "MD, New York University" , "page_count" => 0)

Ureviewdoc.delete_all
Ureviewdoc.create("user_id" => jeff["id"] , "doc_id" => john["id"] , "doc_urating" => 1 , "doc_ucontent" => "He is no James Bond." , "doc_uphoto1" => "http://upload.wikimedia.org/wikipedia/commons/0/0b/Little_Nellie.jpg" , "doc_ureco" => 0 )
Ureviewdoc.create("user_id" => ben["id"] , "doc_id" => james["id"] , "doc_urating" => 5, "doc_ucontent" => "He is the real James Bond." , "doc_uphoto1" => "http://www.007.com/wp-content/themes/007-2014/library/images/007_logo.png" , "doc_ureco" => 1 )

Insurance.delete_all
atena = Insurance.create("insuname" => "Atena Insurance" , "insuurl" => "http://www.aetna.com" )

Insurancehosp.delete_all
Insurancehosp.create("insu_id" => atena["id"] , "hosp_id" => nuhealth["id"] )
Insurancehosp.create("insu_id" => atena["id"] , "hosp_id" => uchicagohealth["id"] )

Treatment.delete_all
pediatrics = Treatment.create("treatname" => "Pediatrics" , "treaturl" => "http://en.wikipedia.org/wiki/Pediatrics" )
psychiatry = Treatment.create("treatname" => "Psychiatry" , "treaturl" => "http://en.wikipedia.org/wiki/Psychiatry" )

Treatmenthosp.delete_all
Treatmenthosp.create("treat_id" => psychiatry["id"] , "doc_id" => john["id"] , "hosp_id" => nuhealth["id"] )
Treatmenthosp.create("treat_id" => psychiatry["id"] , "doc_id" => john["id"] , "hosp_id" => uchicagohealth["id"] )
Treatmenthosp.create("treat_id" => pediatrics["id"] , "doc_id" => james["id"] , "hosp_id" => nuhealth["id"] )
Treatmenthosp.create("treat_id" => pediatrics["id"] , "doc_id" => james["id"] , "hosp_id" => uchicagohealth["id"] )


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
