

<?php
session_start();
if (!isset($_SESSION['email'])) {
  header("Location: index.php");
}

if ($_SESSION['role'] != 'customers') {
  header("Location: unauthorize.php");
}
?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="theme-color" content="#101d35">
    <meta
      name="description"
      content="EstateFlow administrator dashboard overview for properties, bookings, visits, and operations."
    >
    <title>Overview | EstateFlow Admin</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Manrope:wght@400;500;600;700;800&display=swap"
      rel="stylesheet"
    >
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
      referrerpolicy="no-referrer"
    >
    <link rel="stylesheet" href="../assets/css/global.css">
    <link rel="stylesheet" href="../assets/css/admin/dashboard.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js@4.4.4/dist/chart.umd.min.js" defer></script>
    <script src="../assets/js/admin/dashboard.js" defer></script>
  </head>
  <body class="admin-dashboard">
    <a class="skip-link" href="#main-content">Skip to main content</a>
    <div class="admin-layout" id="admin-layout">
      <div class="sidebar-backdrop" id="sidebar-backdrop" hidden></div>
      <aside class="sidebar" id="admin-sidebar" aria-label="Administrator navigation">
        <div class="sidebar-brand">
          <a class="brand-lockup" href="../index.html" aria-label="EstateFlow home">
            <span class="brand-symbol" aria-hidden="true"><i class="fa-solid fa-house-chimney"></i></span>
            <span class="brand-name">Estate<span>Flow</span></span>
          </a>
          <button
            class="icon-button sidebar-collapse"
            id="sidebar-collapse"
            type="button"
            aria-label="Collapse sidebar"
            aria-expanded="true"
            title="Collapse sidebar"
          >
            <i class="fa-solid fa-angles-left" aria-hidden="true"></i>
          </button>
        </div>

        <div class="workspace-switcher">
          <span class="workspace-avatar" aria-hidden="true">E</span>
          <span class="workspace-copy">
            <span class="workspace-label">Workspace</span>
            <span class="workspace-name">EstateFlow Realty</span>
          </span>
          <i class="fa-solid fa-chevron-down workspace-chevron" aria-hidden="true"></i>
        </div>

        <nav class="sidebar-nav" aria-label="Dashboard sections">
          <p class="nav-caption">Workspace</p>
          <a class="sidebar-link is-active" href="#overview" aria-current="page" title="Overview">
            <i class="fa-solid fa-chart-pie" aria-hidden="true"></i>
            <span>Overview</span>
          </a>
          <p class="nav-caption">Management</p>
          <button class="sidebar-link" type="button" disabled title="Available in a later admin-page phase">
            <i class="fa-solid fa-building" aria-hidden="true"></i><span>Properties</span>
          </button>
          <button class="sidebar-link" type="button" disabled title="Available in a later admin-page phase">
            <i class="fa-solid fa-users" aria-hidden="true"></i><span>Customers</span>
          </button>
          <button class="sidebar-link" type="button" disabled title="Available in a later admin-page phase">
            <i class="fa-solid fa-user-tie" aria-hidden="true"></i><span>Agents</span>
          </button>
          <button class="sidebar-link" type="button" disabled title="Owners are represented by users in the current data model">
            <i class="fa-solid fa-key" aria-hidden="true"></i><span>Owners</span>
          </button>
          <button class="sidebar-link" type="button" disabled title="Available in a later admin-page phase">
            <i class="fa-solid fa-calendar-check" aria-hidden="true"></i><span>Bookings</span>
            <span class="nav-count">8</span>
          </button>
          <button class="sidebar-link" type="button" disabled title="Available in a later admin-page phase">
            <i class="fa-solid fa-calendar-days" aria-hidden="true"></i><span>Property visits</span>
          </button>
          <button class="sidebar-link" type="button" disabled title="Available in a later admin-page phase">
            <i class="fa-solid fa-file-signature" aria-hidden="true"></i><span>Agreements</span>
          </button>

          <p class="nav-caption">Finance &amp; operations</p>
          <button class="sidebar-link" type="button" disabled title="Available in a later admin-page phase">
            <i class="fa-solid fa-wallet" aria-hidden="true"></i><span>Payments</span>
          </button>
          <button class="sidebar-link" type="button" disabled title="Available in a later admin-page phase">
            <i class="fa-solid fa-percent" aria-hidden="true"></i><span>Commissions</span>
          </button>
          <button class="sidebar-link" type="button" disabled title="Available in a later admin-page phase">
            <i class="fa-solid fa-receipt" aria-hidden="true"></i><span>Expenses</span>
          </button>
          <button class="sidebar-link" type="button" disabled title="Available in a later admin-page phase">
            <i class="fa-solid fa-screwdriver-wrench" aria-hidden="true"></i><span>Maintenance</span>
            <span class="nav-count nav-count-warm">3</span>
          </button>
          <button class="sidebar-link" type="button" disabled title="Available in a later admin-page phase">
            <i class="fa-solid fa-chart-line" aria-hidden="true"></i><span>Reports &amp; analytics</span>
          </button>

          <p class="nav-caption">Administration</p>
          <button class="sidebar-link" type="button" disabled title="Available in a later admin-page phase">
            <i class="fa-regular fa-bell" aria-hidden="true"></i><span>Notifications</span>
          </button>
          <button class="sidebar-link" type="button" disabled title="Available in a later admin-page phase">
            <i class="fa-solid fa-shield-halved" aria-hidden="true"></i><span>Users &amp; roles</span>
          </button>
          <button class="sidebar-link" type="button" disabled title="Available in a later admin-page phase">
            <i class="fa-solid fa-gear" aria-hidden="true"></i><span>Settings</span>
          </button>
        </nav>

        <div class="sidebar-bottom">
          <div class="sidebar-help">
            <span class="help-icon"><i class="fa-regular fa-circle-question" aria-hidden="true"></i></span>
            <span class="help-copy"><strong>Need a hand?</strong><small>Visit the help center</small></span>
            <i class="fa-solid fa-arrow-up-right-from-square help-arrow" aria-hidden="true"></i>
          </div>
          <div class="sidebar-profile">
            <span class="profile-avatar"></span>
            <span class="profile-copy"><strong></strong><small>Administrator</small></span>
            <a class="profile-menu" href="logout.php" aria-label="Sign out"><i class="fa-solid fa-arrow-right-from-bracket" aria-hidden="true"></i></a>
          </div>
        </div>
      </aside>

      <div class="main-shell">
        <header class="topbar">
          <div class="topbar-start">
            <button
              class="icon-button mobile-menu-toggle"
              id="mobile-menu-toggle"
              type="button"
              aria-label="Open navigation"
              aria-expanded="false"
              aria-controls="admin-sidebar"
            >
              <i class="fa-solid fa-bars" aria-hidden="true"></i>
            </button>
            <div class="breadcrumb"><span>Workspace</span><i class="fa-solid fa-chevron-right" aria-hidden="true"></i><strong>Overview</strong></div>
          </div>
          <div class="topbar-actions">
            <div class="topbar-date"><i class="fa-regular fa-calendar" aria-hidden="true"></i><span id="current-date">Today</span></div>
            <button class="icon-button notification-button" type="button" aria-label="Notifications, 3 unread" disabled title="Notifications page is planned for a later admin-page phase">
              <i class="fa-regular fa-bell" aria-hidden="true"></i><span class="notification-dot"></span>
            </button>
            <span class="topbar-divider" aria-hidden="true"></span>
            <a class="topbar-user" href="logout.php" aria-label="Sign out" title="Sign out">
              <span class="profile-avatar"></span><span class="topbar-user-name"></span><i class="fa-solid fa-arrow-right-from-bracket" aria-hidden="true"></i>
            </a>
          </div>
        </header>

        <main class="dashboard-main" id="main-content">
          <section class="page-heading" id="overview" aria-labelledby="welcome-heading">
            <div>
              <p class="page-eyebrow"><span class="live-dot"></span> Admin workspace</p>
              <h1 id="welcome-heading"><span id="greeting">Good morning</span>,  <span class="wave" aria-hidden="true">✦</span></h1>
              <p class="page-subtitle">Here’s what’s happening across your properties today.</p>
            </div>
            <div class="heading-actions">
              <span class="sample-label"><i class="fa-solid fa-circle-info" aria-hidden="true"></i> Sample data preview</span>
              <button class="button button-primary" id="open-property-modal" type="button">
                <i class="fa-solid fa-plus" aria-hidden="true"></i><span>Add property</span>
              </button>
            </div>
          </section>

          <section class="stat-grid" aria-label="Portfolio overview">
            <article class="stat-card">
              <div class="stat-top"><span class="stat-label">Total properties</span><span class="stat-icon stat-icon-blue"><i class="fa-solid fa-building" aria-hidden="true"></i></span></div>
              <div class="stat-value">248</div>
              <div class="stat-foot"><span class="trend trend-positive"><i class="fa-solid fa-arrow-trend-up" aria-hidden="true"></i> 12.8%</span><span>vs. last month</span></div>
              <span class="stat-spark spark-blue" aria-hidden="true"><i></i><i></i><i></i><i></i><i></i><i></i><i></i></span>
            </article>
            <article class="stat-card">
              <div class="stat-top"><span class="stat-label">Monthly revenue</span><span class="stat-icon stat-icon-green"><i class="fa-solid fa-coins" aria-hidden="true"></i></span></div>
              <div class="stat-value">৳48.2<span class="stat-unit">L</span></div>
              <div class="stat-foot"><span class="trend trend-positive"><i class="fa-solid fa-arrow-trend-up" aria-hidden="true"></i> 8.2%</span><span>vs. last month</span></div>
              <span class="stat-spark spark-green" aria-hidden="true"><i></i><i></i><i></i><i></i><i></i><i></i><i></i></span>
            </article>
            <article class="stat-card">
              <div class="stat-top"><span class="stat-label">Active bookings</span><span class="stat-icon stat-icon-purple"><i class="fa-solid fa-calendar-check" aria-hidden="true"></i></span></div>
              <div class="stat-value">18</div>
              <div class="stat-foot"><span class="trend trend-positive"><i class="fa-solid fa-arrow-trend-up" aria-hidden="true"></i> 4.6%</span><span>vs. last month</span></div>
              <span class="stat-spark spark-purple" aria-hidden="true"><i></i><i></i><i></i><i></i><i></i><i></i><i></i></span>
            </article>
            <article class="stat-card">
              <div class="stat-top"><span class="stat-label">Pending requests</span><span class="stat-icon stat-icon-amber"><i class="fa-regular fa-clock" aria-hidden="true"></i></span></div>
              <div class="stat-value">07</div>
              <div class="stat-foot"><span class="trend trend-attention"><i class="fa-solid fa-circle-exclamation" aria-hidden="true"></i> Needs review</span><span>3 new today</span></div>
              <span class="stat-spark spark-amber" aria-hidden="true"><i></i><i></i><i></i><i></i><i></i><i></i><i></i></span>
            </article>
          </section>

          <section class="chart-grid" id="analytics" aria-label="Portfolio analytics">
            <article class="panel revenue-panel">
              <div class="panel-heading">
                <div><h2>Revenue overview</h2><p>Income across your portfolio</p></div>
                <label class="sr-only" for="revenue-period">Revenue chart period</label>
                <select class="select-control" id="revenue-period" aria-label="Revenue chart period">
                  <option value="7">Last 7 days</option>
                  <option value="30">Last 30 days</option>
                </select>
              </div>
              <div class="chart-legend"><span><i class="legend-dot legend-revenue"></i> Revenue</span><span class="chart-total">৳12.6L <small>this week</small></span></div>
              <div class="chart-container revenue-chart"><canvas id="revenue-chart" role="img" aria-label="Revenue trend over the last seven days"></canvas></div>
              <p class="chart-fallback" id="revenue-fallback" hidden>Chart preview is unavailable. Revenue summary: ৳12.6L this week.</p>
            </article>

            <article class="panel inventory-panel">
              <div class="panel-heading">
                <div><h2>Property status</h2><p>Current listing breakdown</p></div>
                <button class="icon-button more-button" type="button" aria-label="Property status chart options" disabled><i class="fa-solid fa-ellipsis" aria-hidden="true"></i></button>
              </div>
              <div class="inventory-content">
                <div class="chart-container inventory-chart"><canvas id="inventory-chart" role="img" aria-label="Property status breakdown chart"></canvas><div class="chart-center"><strong>248</strong><span>properties</span></div></div>
                <ul class="inventory-legend">
                  <li><span><i class="legend-dot legend-available"></i> Available</span><strong>142</strong></li>
                  <li><span><i class="legend-dot legend-rented"></i> Rented</span><strong>68</strong></li>
                  <li><span><i class="legend-dot legend-sold"></i> Sold</span><strong>24</strong></li>
                  <li><span><i class="legend-dot legend-review"></i> In review</span><strong>14</strong></li>
                </ul>
              </div>
              <p class="chart-fallback" id="inventory-fallback" hidden>Chart preview is unavailable. 142 available · 68 rented · 24 sold · 14 in review.</p>
            </article>
          </section>

          <section class="lower-grid" aria-label="Recent activity and upcoming visits">
            <article class="panel transactions-panel" id="recent-bookings">
              <div class="panel-heading panel-heading-table">
                <div><h2>Recent bookings</h2><p>A quick look at the latest activity</p></div>
                <a class="view-link" href="#recent-bookings">View all <i class="fa-solid fa-arrow-right" aria-hidden="true"></i></a>
              </div>
              <div class="table-toolbar">
                <label class="table-search">
                  <i class="fa-solid fa-magnifying-glass" aria-hidden="true"></i>
                  <span class="sr-only">Search bookings</span>
                  <input id="booking-search" type="search" placeholder="Search property or customer..." autocomplete="off">
                </label>
                <label class="sr-only" for="booking-status">Filter bookings by status</label>
                <select class="select-control status-filter" id="booking-status">
                  <option value="all">All statuses</option>
                  <option value="Confirmed">Confirmed</option>
                  <option value="Pending">Pending</option>
                  <option value="Under review">Under review</option>
                </select>
              </div>
              <!-- TODO: PHP Backend Integration — fetch booking and customer records from MySQL. -->
              <div class="table-scroll">
                <table class="data-table">
                  <thead><tr><th scope="col">Property</th><th scope="col">Customer</th><th scope="col">Date</th><th scope="col">Amount</th><th scope="col">Status</th></tr></thead>
                  <tbody id="booking-rows">
                    <tr data-status="Confirmed">
                      <td><span class="property-cell"><span class="property-thumb thumb-one"><i class="fa-solid fa-building" aria-hidden="true"></i></span><span><strong>Lakeview Heights</strong><small>Apartment · Gulshan</small></span></span></td>
                      <td><span class="customer-cell"><span class="table-avatar avatar-lilac">SR</span><span><strong>Sabrina Rahman</strong><small>Customer</small></span></span></td>
                      <td>Nov 04, 2026</td><td class="amount-cell">৳1,25,000</td><td><span class="status-badge status-confirmed"><i></i>Confirmed</span></td>
                    </tr>
                    <tr data-status="Pending">
                      <td><span class="property-cell"><span class="property-thumb thumb-two"><i class="fa-solid fa-house" aria-hidden="true"></i></span><span><strong>Maple Residency</strong><small>Villa · Banani</small></span></span></td>
                      <td><span class="customer-cell"><span class="table-avatar avatar-peach">TH</span><span><strong>Tanvir Hasan</strong><small>Customer</small></span></span></td>
                      <td>Nov 03, 2026</td><td class="amount-cell">৳2,10,000</td><td><span class="status-badge status-pending"><i></i>Pending</span></td>
                    </tr>
                    <tr data-status="Under review">
                      <td><span class="property-cell"><span class="property-thumb thumb-three"><i class="fa-solid fa-building" aria-hidden="true"></i></span><span><strong>Orchid Garden Flat</strong><small>Apartment · Dhanmondi</small></span></span></td>
                      <td><span class="customer-cell"><span class="table-avatar avatar-blue">NA</span><span><strong>Nusrat Ahmed</strong><small>Customer</small></span></span></td>
                      <td>Nov 02, 2026</td><td class="amount-cell">৳98,000</td><td><span class="status-badge status-review"><i></i>Under review</span></td>
                    </tr>
                    <tr data-status="Confirmed">
                      <td><span class="property-cell"><span class="property-thumb thumb-four"><i class="fa-solid fa-house" aria-hidden="true"></i></span><span><strong>Sunrise Corner House</strong><small>House · Uttara</small></span></span></td>
                      <td><span class="customer-cell"><span class="table-avatar avatar-green">FI</span><span><strong>Farhan Islam</strong><small>Customer</small></span></span></td>
                      <td>Oct 31, 2026</td><td class="amount-cell">৳1,75,000</td><td><span class="status-badge status-confirmed"><i></i>Confirmed</span></td>
                    </tr>
                  </tbody>
                </table>
                <p class="empty-table" id="empty-bookings" hidden>No bookings match your search.</p>
              </div>
              <div class="table-footer"><span id="booking-count">Showing 4 sample bookings</span><span class="sample-note">Demo content</span></div>
            </article>

            <article class="panel visits-panel" id="upcoming-visits">
              <div class="panel-heading">
                <div><h2>Upcoming visits</h2><p>Scheduled property viewings</p></div>
                <button class="icon-button more-button" type="button" aria-label="Upcoming visits options" disabled><i class="fa-solid fa-ellipsis" aria-hidden="true"></i></button>
              </div>
              <!-- TODO: PHP Backend Integration — load visit schedules and assigned agents from MySQL. -->
              <div class="visit-list">
                <article class="visit-item">
                  <div class="visit-date"><strong>04</strong><span>NOV</span></div>
                  <div class="visit-details"><strong>Lakeview Heights</strong><span><i class="fa-regular fa-clock" aria-hidden="true"></i> 10:30 AM · Gulshan</span></div>
                  <span class="visit-avatar avatar-lilac" aria-label="Agent Mehedi Hasan">MH</span>
                </article>
                <article class="visit-item">
                  <div class="visit-date"><strong>04</strong><span>NOV</span></div>
                  <div class="visit-details"><strong>Maple Residency</strong><span><i class="fa-regular fa-clock" aria-hidden="true"></i> 01:00 PM · Banani</span></div>
                  <span class="visit-avatar avatar-peach" aria-label="Agent Shaila Karim">SK</span>
                </article>
                <article class="visit-item">
                  <div class="visit-date"><strong>05</strong><span>NOV</span></div>
                  <div class="visit-details"><strong>Orchid Garden Flat</strong><span><i class="fa-regular fa-clock" aria-hidden="true"></i> 11:15 AM · Dhanmondi</span></div>
                  <span class="visit-avatar avatar-blue" aria-label="Agent Tareq Ahmed">TA</span>
                </article>
              </div>
              <a class="visits-link" href="#upcoming-visits">View visit calendar <i class="fa-solid fa-arrow-right" aria-hidden="true"></i></a>
            </article>
          </section>

          <footer class="dashboard-footer">
            <span>EstateFlow Admin <span aria-hidden="true">·</span> Administrator workspace</span>
            <span>Charts, bookings, and visits are sample preview content.</span>
          </footer>
        </main>
      </div>
    </div>

    <dialog class="property-dialog" id="property-dialog" aria-labelledby="property-dialog-title">
      <form class="property-form" id="property-form">
        <div class="dialog-heading">
          <div><span class="dialog-icon"><i class="fa-solid fa-house-circle-check" aria-hidden="true"></i></span><h2 id="property-dialog-title">Add a property</h2><p>Enter listing details for the property record.</p></div>
          <button class="icon-button dialog-close" id="close-property-modal" type="button" aria-label="Close dialog"><i class="fa-solid fa-xmark" aria-hidden="true"></i></button>
        </div>
        <!-- TODO: PHP Backend Integration — validate and persist this form through the application backend. No data is saved by this frontend preview. -->
        <div class="form-grid">
          <label class="form-field form-field-wide" for="property-name">Property name<input id="property-name" name="property_name" type="text" placeholder="e.g. Lakeview Heights" required></label>
          <label class="form-field" for="property-form-type">Property type<select id="property-form-type" name="property_type" required><option value="">Select type</option><option>Apartment</option><option>House</option><option>Commercial</option></select></label>
          <label class="form-field" for="property-price">Asking price (৳)<input id="property-price" name="price" type="number" min="0" placeholder="0" required></label>
          <label class="form-field form-field-wide" for="property-location">Location<input id="property-location" name="location" type="text" placeholder="Area, city" required></label>
        </div>
        <p class="form-notice" id="property-form-notice" role="status" hidden></p>
        <div class="dialog-actions"><button class="button button-quiet" id="cancel-property-modal" type="button">Cancel</button><button class="button button-primary" type="submit"><i class="fa-solid fa-arrow-right" aria-hidden="true"></i> Continue to backend</button></div>
      </form>
    </dialog>
  </body>
</html>
