-- THE VALLEY | DOJ APPLICATION FORM
-- Safe additive/upsert: changes only the DOJ form definition.
-- Does not delete applications, roles, audit records, or other department forms.

insert into public.valley_application_forms
  (department, title, description, questions, is_open, updated_at)
values
  ('doj',
   'DOJ Application',
   'Apply to join the Department of Justice. Serve the community through fairness, professionalism, and accountability.',
   '[{"key":"character_name","label":"What is your full in-city name?","type":"text","required":true},{"key":"discord_name","label":"What is your Discord username?","type":"text","required":true},{"key":"age","label":"How old are you?","type":"text","required":true},{"key":"experience","label":"Do you have any previous DOJ, legal, judicial, or government experience? If so, explain your role and responsibilities.","type":"textarea","required":true},{"key":"why_doj","label":"Why do you want to join the Department of Justice in The Valley?","type":"textarea","required":true},{"key":"doj_role","label":"What do you believe the main responsibilities of the Department of Justice are within the city?","type":"textarea","required":true},{"key":"professionalism","label":"How would you maintain professionalism, neutrality, and respect when dealing with civilians, officers, and other officials?","type":"textarea","required":true},{"key":"impartiality","label":"How would you handle a case involving a friend, colleague, or someone you personally disagree with?","type":"textarea","required":true},{"key":"evidence","label":"Why is accurate evidence, documentation, and truthful reporting important in legal proceedings?","type":"textarea","required":true},{"key":"confidentiality","label":"How would you protect confidential case information and avoid sharing sensitive details with unauthorized people?","type":"textarea","required":true},{"key":"conflict","label":"Two officials disagree about how a case should proceed. How would you approach the disagreement fairly and professionally?","type":"textarea","required":true},{"key":"corruption","label":"What would you do if you witnessed a DOJ employee abusing their authority, showing favoritism, or acting corruptly?","type":"textarea","required":true},{"key":"procedure","label":"How would you ensure your decisions and actions follow DOJ policies, procedures, and the server''s roleplay rules?","type":"textarea","required":true},{"key":"courtroom","label":"If required to participate in a court hearing or legal proceeding, how would you prepare and present yourself?","type":"textarea","required":true},{"key":"decision","label":"Describe how you would make a fair decision when the information available is incomplete or conflicting.","type":"textarea","required":true},{"key":"availability","label":"What days and times are you usually available in the city, and how many hours can you contribute each week?","type":"textarea","required":true},{"key":"final_acknowledgement","label":"I acknowledge that I must follow DOJ policies and procedures, remain impartial, protect confidential information, act professionally, and never misuse my position or participate in corruption.","type":"checkbox","required":true}]'::jsonb,
   true,
   now())
on conflict (department) do update
set title = excluded.title,
    description = excluded.description,
    questions = excluded.questions,
    is_open = excluded.is_open,
    updated_at = now();
