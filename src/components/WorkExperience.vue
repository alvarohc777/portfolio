<template>
  <div
    class="q-px-lg q-py-md"
    :style="{ width: containerWidth, margin: '0 auto' }"
  >
    <q-timeline color="secondary" layout="dense">
      <!-- Parent Loop: One bullet per Company -->
      <q-timeline-entry
        v-for="(companyNode, index) in jobsList"
        :key="index"
        :subtitle="`${companyNode.start_date} - ${companyNode.end_date}`"
      >
        <template #title>
          <div class="text-h6 text-bold q-my-none">
            {{ companyNode.company }}
          </div>
        </template>

        <!-- Nested Layout: Loop through roles within this company -->
        <div
          v-for="(role, roleIndex) in companyNode.roles"
          :key="roleIndex"
          :class="{ 'q-mt-md': roleIndex > 0 }"
          style="border-left: 2px dashed #e0e0e0; padding-left: 16px"
        >
          <!-- Role Details -->
          <div class="text-subtitle2 text-secondary text-weight-medium">
            {{ role.title }}
          </div>
          <div
            v-if="role.start_date && role.end_date"
            class="text-caption text-grey-7 q-mb-xs"
          >
            {{ role.start_date }} - {{ role.end_date }}
          </div>

          <!-- Tasks -->
          <ul class="q-pl-md q-mt-none text-body2 text-grey-9">
            <li
              v-for="(task, taskIndex) in role.tasks"
              :key="taskIndex"
              class="q-mb-xs"
            >
              {{ task }}
            </li>
          </ul>
        </div>
      </q-timeline-entry>
    </q-timeline>
  </div>
</template>

<script setup>
import { computed, ref } from 'vue'
import { useQuasar } from 'quasar'

const $q = useQuasar()

// Screen width responsive logic
const containerWidth = computed(() => {
  const screenSize = $q.screen.name
  if (screenSize === 'sm') {
    return '100%'
  }
  if (screenSize === 'md') {
    return '80%'
  }
  return '60%'
})

// Deeply nested chronological jobs list mirroring your CV hierarchy
const jobsList = ref([
  {
    company: 'YipitData (Contractor via Turnkey)',
    start_date: 'Jul 2025',
    end_date: 'Feb 2026',
    roles: [
      {
        title: 'Data Specialist (Remote)',
        tasks: [
          'Leveraged the OpenAI Developer Platform for prompt engineering, model output validation, and fine-tuning dataset quality.',
          'Developed a Custom GPT to standardize and guide analysts through manual data classification, significantly enhancing dataset consistency and labeling accuracy.',
          'Engineered LLM-driven workflows using ChatGPT to automate documentation and data input preparation, reducing operational setup time by 87% (from 1 day to 1 hour).',
          'Conducted large-scale data analysis in Databricks using PySpark and SQL to audit model evaluation metrics and ensure strict data quality control.'
        ]
      }
    ]
  },
  {
    company: 'BBVA - Multinational Banking Group',
    start_date: 'Oct 2023',
    end_date: 'Jun 2025',
    roles: [
      {
        title: 'Colombia | Data Engineering Expert I (Remote)',
        start_date: 'Nov 2024',
        end_date: 'Jun 2025',
        tasks: [
          'Contributed to the migration of internal datalake pipelines to AWS as part of a data governance project, leveraging Spark Scala repos and Jupyter notebooks.',
          'Built Python-based automations in Google Colab using Pandas to transform raw inputs (.txt, .dat, .xlsx) into production-ready .csv files, achieving a 92% reduction in manual data preparation time (from 1 hour to 5 minutes) while ensuring data integrity for Risk Management units under BCBS 239 standards.',
          'Refactored, maintained and enhanced an internal web app with Google Apps Script (JS, HTML, CSS), cutting load time by 20% and adding new features.',
          "Audited and validated contractor-developed data pipelines within the Bank's AWS Data Lake using PySpark and Jupyter Notebooks, identifying critical logic flaws in debt reporting tables such as incorrect join keys and dimension explosions preventing the deployment of faulty production code and ensuring data integrity.",
          'Leveraged Databricks to access and analyze production data within the AWS Data Lake, developing PySpark-based validation queries to ensure data quality, consistency, and integrity of business-critical datasets prior to downstream consumption.'
        ]
      },
      {
        title:
          'Argentina (Contractor via Bluetab, an IBM Company) | Data Engineer (Remote)',
        start_date: 'Oct 2023',
        end_date: 'Nov 2024',
        tasks: [
          'Collaborated closely with BBVA Argentina stakeholders, actively engaging in requirement-gathering workshops to deliver tailored data solutions.',
          'Developed automations, ingestion workflows, and job scheduling for data loading processes from various sources using Control-M, PySpark, and internal bank utilities.',
          'Documented technical architectures and data lineages for future reference, ensuring compliance with team delivery standards.'
        ]
      }
    ]
  },
  {
    company: 'UTraffic',
    start_date: 'Apr 2023',
    end_date: 'Oct 2023',
    roles: [
      {
        title: 'Fullstack Engineer',
        tasks: [
          'Developed Docker images and Docker Compose files for various components, including C# services, C# backend, Quasar SPA server, and PostgreSQL database.',
          'Created an installer for C# services and VueJs/Electron Apps using InnoSetup (Pascal).',
          'Set up redundant Windows servers for high availability.',
          'Code REST API in ASP.NET CORE Dotnet 6.0.',
          'Create Dashboards in VueJs using Quasar.'
        ]
      }
    ]
  },
  {
    company: 'Universidad del Norte',
    start_date: 'May 2021',
    end_date: 'May 2023',
    roles: [
      {
        title: 'Teaching Assistant',
        start_date: 'Jan 2022',
        end_date: 'May 2023',
        tasks: [
          'Conducted laboratory sessions for the subjects Circuits II and Electrical Machines I.'
        ]
      },
      {
        title: 'Junior Researcher',
        start_date: 'May 2021',
        end_date: 'Apr 2023',
        tasks: [
          'Automated simulation environments to optimize internal tools, leading to a significant reduction in execution constraints.',
          'Implemented a fault detection strategy for micro-grids, leveraging Deep Learning and Machine Learning techniques with PyTorch framework.',
          'Gained a theoretical foundation on methodologies applied in the detection of faults in micro-grids and active distribution networks.'
        ]
      }
    ]
  }
])
</script>
