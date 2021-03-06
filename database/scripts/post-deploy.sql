/* Additional updates to DB stucture, as Python's model.py has limited abilities to do this */
DROP INDEX IF EXISTS well_latlong CASCADE;
CREATE INDEX well_latlong ON well (latitude, longitude);

COMMENT ON TABLE activity_submission               IS 'Placeholder table comment.';
COMMENT ON TABLE activity_submission_water_quality IS 'Placeholder table comment.';
COMMENT ON TABLE aquifer_well                      IS 'Placeholder table comment.';
COMMENT ON TABLE bcgs_number                       IS 'Placeholder table comment.';
COMMENT ON TABLE bedrock_material_code                  IS 'Placeholder table comment.';
COMMENT ON TABLE bedrock_material_descriptor_code       IS 'Placeholder table comment.';
COMMENT ON TABLE casing                            IS 'Placeholder table comment.';
COMMENT ON TABLE casing_material_code                   IS 'Placeholder table comment.';
COMMENT ON TABLE casing_code                       IS 'Placeholder table comment.';
COMMENT ON TABLE decommission_method_code               IS 'Placeholder table comment.';
COMMENT ON TABLE development_method_code                IS 'Placeholder table comment.';
COMMENT ON TABLE driller                           IS 'Placeholder table comment.';
COMMENT ON TABLE drilling_company                  IS 'Placeholder table comment.';
COMMENT ON TABLE drilling_method_code                   IS 'Placeholder table comment.';
COMMENT ON TABLE filter_pack_material_code              IS 'Placeholder table comment.';
COMMENT ON TABLE filter_pack_material_size_code         IS 'Placeholder table comment.';
COMMENT ON TABLE ground_elevation_method_code           IS 'Placeholder table comment.';
COMMENT ON TABLE intended_water_use_code                IS 'Placeholder table comment.';
COMMENT ON TABLE land_district_code                     IS 'Placeholder table comment.';
COMMENT ON TABLE licenced_status_code                   IS 'Placeholder table comment.';
COMMENT ON TABLE liner_material_code                    IS 'Placeholder table comment.';
COMMENT ON TABLE liner_perforation                 IS 'Placeholder table comment.';
COMMENT ON TABLE lithology_colour_code                  IS 'Placeholder table comment.';
COMMENT ON TABLE lithology_description             IS 'Placeholder table comment.';
COMMENT ON TABLE lithology_description_code        IS 'Placeholder table comment.';
COMMENT ON TABLE lithology_hardness_code                IS 'Placeholder table comment.';
COMMENT ON TABLE lithology_material_code                IS 'Placeholder table comment.';
COMMENT ON TABLE lithology_moisture_code                IS 'Placeholder table comment.';
COMMENT ON TABLE lithology_structure_code               IS 'Placeholder table comment.';
COMMENT ON TABLE ltsa_owner                        IS 'Placeholder table comment.';
COMMENT ON TABLE perforation                       IS 'Placeholder table comment.';
COMMENT ON TABLE production_data                   IS 'Placeholder table comment.';
COMMENT ON TABLE province_state_code                    IS 'Placeholder table comment.';
COMMENT ON TABLE screen                            IS 'Placeholder table comment.';
COMMENT ON TABLE screen_assembly_type_code              IS 'Placeholder table comment.';
COMMENT ON TABLE screen_bottom_code                     IS 'Placeholder table comment.';
COMMENT ON TABLE screen_intake_method_code              IS 'Placeholder table comment.';
COMMENT ON TABLE screen_material_code                   IS 'Placeholder table comment.';
COMMENT ON TABLE screen_opening_code                    IS 'Placeholder table comment.';
COMMENT ON TABLE screen_type_code                       IS 'Placeholder table comment.';
COMMENT ON TABLE surface_seal_material_code             IS 'Placeholder table comment.';
COMMENT ON TABLE surface_seal_method_code               IS 'Placeholder table comment.';
COMMENT ON TABLE surficial_material_code                IS 'Placeholder table comment.';
COMMENT ON TABLE water_quality_characteristic      IS 'Placeholder table comment.';
COMMENT ON TABLE well                              IS 'Placeholder table comment.';
COMMENT ON TABLE well_activity_code                IS 'Placeholder table comment.';
COMMENT ON TABLE well_class_code                        IS 'Placeholder table comment.';
COMMENT ON TABLE well_status_code                       IS 'Placeholder table comment.';
COMMENT ON TABLE well_subclass_code                     IS 'Placeholder table comment.';
COMMENT ON TABLE well_water_quality                IS 'Placeholder table comment.';
COMMENT ON TABLE well_yield_unit_code                   IS 'Placeholder table comment.';
COMMENT ON TABLE yield_estimation_method_code           IS 'Placeholder table comment.';


ALTER TABLE bedrock_material_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;
ALTER TABLE bedrock_material_descriptor_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;
ALTER TABLE casing_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;
ALTER TABLE casing_material_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;
ALTER TABLE decommission_method_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;
ALTER TABLE development_method_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;
ALTER TABLE drilling_method_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;
ALTER TABLE filter_pack_material_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;
ALTER TABLE filter_pack_material_size_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;
ALTER TABLE ground_elevation_method_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;
ALTER TABLE intended_water_use_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;
ALTER TABLE land_district_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;
ALTER TABLE licenced_status_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;
ALTER TABLE liner_material_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;
ALTER TABLE lithology_colour_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;
ALTER TABLE lithology_description_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;
ALTER TABLE lithology_hardness_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;
ALTER TABLE lithology_material_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;
ALTER TABLE lithology_moisture_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;
ALTER TABLE lithology_structure_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;
ALTER TABLE obs_well_status_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;

-- Tue 13 Feb 22:36:42 2018 GW Disabled for now until after CodeWithUs Sprint
-- ALTER TABLE province_state_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;

ALTER TABLE screen_assembly_type_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;
ALTER TABLE screen_bottom_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;
ALTER TABLE screen_intake_method_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;
ALTER TABLE screen_material_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;
ALTER TABLE screen_opening_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;
ALTER TABLE screen_type_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;
ALTER TABLE surface_seal_material_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;
ALTER TABLE surface_seal_method_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;
ALTER TABLE surficial_material_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;
ALTER TABLE well_activity_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;
ALTER TABLE well_class_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;
ALTER TABLE well_status_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;
ALTER TABLE well_subclass_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;
ALTER TABLE well_yield_unit_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;
ALTER TABLE yield_estimation_method_code ALTER COLUMN effective_date SET DEFAULT CURRENT_DATE;

-- Thu  1 Mar 20:00:30 2018 GW Django doesn't support multi-column PK's
ALTER TABLE well_subclass_code ADD CONSTRAINT well_subclass_code_uk UNIQUE (well_class_code, well_subclass_code);
