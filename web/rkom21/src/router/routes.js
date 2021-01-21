
const routes = [
  {
    path: '/',
    component: () => import('layouts/WelcomeLayout.vue'),
    children: [
      { path: '', component: () => import('pages/Index.vue') }
    ]
  },

  {
    path: '/Team/:teamId',
    component: () => import('layouts/MainLayout.vue'),
    children: [
      { path: '', component: () => import('pages/team.landing.vue') },
      { path: 'lab.conn', component: () => import('pages/lab.conn.vue') },
      { path: 'mpe.fields', component: () => import('pages/mpe.fields.vue') },
      { path: 'ocpipeline.help', component: () => import('pages/ocpipeline.help.vue') },
      { path: 'online.tools', component: () => import('pages/online.tools.vue') },
      { path: 'log.sample.originals', component: () => import('pages/log.sample.originals.vue') },
      { path: 'log.sample.filebeat', component: () => import('pages/log.sample.filebeat.vue') },
      { path: 'pipeline.files/filter', component: () => import('pages/pipeline.files.filter.vue') },
      { path: 'pipeline.files/transform', component: () => import('pages/pipeline.files.transform.vue') },
      { path: 'solution.files/filter', component: () => import('pages/solution.files.filter.vue') },
      { path: 'solution.files/transform', component: () => import('pages/solution.files.transform.vue') },
      { path: 'rkom.colouring', component: () => import('pages/rkom.colouring.vue') }
    ]
  },

  {
    path: '/supervisor/',
    component: () => import('layouts/SupervisorLayout.vue'),
    children: [
      { path: '', component: () => import('pages/supervisor/landing.vue') },
      { path: 'all.teams.editors', component: () => import('pages/supervisor/all.teams.editors.vue') },
      { path: 'editor.admin', component: () => import('pages/supervisor/editor.admin.vue') },
      { path: 'editor.message.all', component: () => import('pages/supervisor/editor.message.all.vue') },
      { path: 'editor.landing', component: () => import('pages/supervisor/editor.landing.vue') }
    ]
  },

  // Always leave this as last one,
  // but you can also remove it
  {
    path: '*',
    component: () => import('pages/Error404.vue')
  }
]

export default routes
