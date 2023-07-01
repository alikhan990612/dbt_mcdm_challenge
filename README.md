## Task
This project is a response to the https://github.com/technomonah/dbt_mcdm_challenge challenge from the Improvado company.
In short, we have the structure of the final model (table). As well as unprocessed data (also table). It is necessary to create a data model that combines all the unprocessed data. And finally display the model as a diagram using looker studio.

### Tools
To complete this task, you might need the following tools:
-   dbt Cloud
-   Google Big Query
-   Google Looker Studio

### How to Use the Repository
This is the foundational repository for your project. Clone it and start your dbt Cloud from it.

The repository includes raw data from various ad platforms, as well as the MCDM structure for the ads_basic_performance report, which are provided as seeds:

-   src_ads_bing_all_data
-   src_ads_creative_facebook_all_data
-   src_ads_tiktok_ads_all_data
-   src_promoted_tweets_twitter_all_data
-   mcdm_paid_ads_basic_performance_structure

To build the seeds, run `dbt seed` in the dbt Cloud console. Once the seeds have been built, you can access the data using `ref()`. For example, you can use `select * from {{ ref('src_ads_bing_all_data')}}` to access data from the `src_ads_bing_all_data` seed.

Note: Clone not this already completed project, but the original task at this link https://github.com/technomonah/dbt_mcdm_challenge.
->
- After cloning, connect to your repository on the dbt Cloud platform.
- Now we need to create a folder called models.
- Inside your new folder, create files of type ".sql" and name them relative to the names of the seeds.
- You need to create an object (view /table ) inside each file using the CTE based on the DML - SELECT statement.
- Don't forget that each column must be in the correct order and type as we are going to create the final model based on this data using UNION ALL.
- Let's create another file and name it ads_basic_performance.
- Here we have to create an object combining all the already processed data with the help of what I wrote came out UNION ALL.

Change the way your model is materialized.
->
- Edit your dbt_project.yml file.
- Update your project name to which you want.
- Update your models config block to:
	models:
  		mcdm_task(Your project name):
    		# Applies to all files under models/example/
    		materialized: view
      Edit models configuring the type of the object(Before CTE):
	{{
  	 config(
	  materialized='view'
  	 )
	}}
 	with your_model_name as (
		select
        	ad_id
        ...
	)
 - Enter the dbt run command. Your model, should now build as a view
 - Enter the dbt run --full-refresh command for this to take effect in your warehouse

 Let's create a report (MCDM model) on Bigquery and Looker studio.
 ->
- Let's go to our DWH - Bigquery.
- Choose our Dataset.
- Select the final model (ads_basic_performance).
- In a new tab, select Export -> Export with Looker Studio

- Add a new diagram.
- In the setting, select the Channel parameter
- After that, inside the same setting, add a new indicator -> create a field
- Write the calculation formula. For example, to find the Conversion cost by channel use -> round(sum(spend) / sum(total_conversions),2)

 At the end we should get this result:
 https://lookerstudio.google.com/u/0/reporting/884cb01d-1cf7-4d14-8689-8c30f7fa00c4/page/tEnnC
 
 That's all!!!
