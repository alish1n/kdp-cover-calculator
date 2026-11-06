<div id="bcc-root" class="bcc-root">

<style>

/* =========================================================
   KDP COVER CALCULATOR
   WIDE + COMPACT RESPONSIVE VERSION
   ========================================================= */

#bcc-root {
  --bcc-ink: #333333;
  --bcc-paper: #ffffff;
  --bcc-grey: #666666;
  --bcc-grey-light: #808080;
  --bcc-line: #e2e2e2;
  --bcc-muted: #6f6f6f;
  --bcc-white: #ffffff;
  --bcc-safe: #b23b3b;

  font-family:
    -apple-system,
    BlinkMacSystemFont,
    "Segoe UI",
    Roboto,
    Helvetica,
    Arial,
    sans-serif;

  color: var(--bcc-ink);

  background: #ffffff;

  border: 1px solid var(--bcc-line);

  border-radius: 6px;

  padding: 0;

  /*
   * IMPORTANT:
   * Makes the calculator wider than the normal
   * WordPress content column on desktop.
   */
  width: calc(100vw - 40px);

  max-width: 1400px;

  margin-left: 50%;

  transform: translateX(-50%);

  box-sizing: border-box;

  overflow: hidden;
}


/* =========================================================
   GLOBAL BOX SIZING
   ========================================================= */

#bcc-root *,
#bcc-root *::before,
#bcc-root *::after {
  box-sizing: border-box;
}


/* =========================================================
   HEADINGS
   ========================================================= */

#bcc-root h1,
#bcc-root h2,
#bcc-root h3,
#bcc-root h4 {
  font-family:
    -apple-system,
    BlinkMacSystemFont,
    "Segoe UI",
    Roboto,
    Helvetica,
    Arial,
    sans-serif;

  font-weight: 600;

  margin: 0;

  color: #333333;
}


/* =========================================================
   HEADER
   ========================================================= */

.bcc-header {
  background: linear-gradient(
    135deg,
    #5c5c5c 0%,
    #858585 100%
  );

  color: #ffffff;

  padding: 22px 30px;

  border-radius: 6px 6px 0 0;
}


/* KDP COVER CALCULATOR HEADING */

.bcc-header h2 {
  font-family:
    -apple-system,
    BlinkMacSystemFont,
    "Segoe UI",
    Roboto,
    Helvetica,
    Arial,
    sans-serif !important;

  font-size: 25px;

  font-weight: 600;

  letter-spacing: 0.1px;

  line-height: 1.25;

  color: #ffffff !important;

  margin: 0;
}


.bcc-header p {
  margin: 7px 0 0;

  color: #f3f3f3;

  font-family:
    -apple-system,
    BlinkMacSystemFont,
    "Segoe UI",
    Roboto,
    Helvetica,
    Arial,
    sans-serif;

  font-size: 14px;

  max-width: 760px;

  line-height: 1.45;
}


/* =========================================================
   MAIN BODY
   ========================================================= */

.bcc-body {
  display: grid;

  /*
   * Slightly narrower form + much wider results section.
   */
  grid-template-columns: 280px minmax(0, 1fr);

  gap: 0;

  background: #ffffff;

  align-items: stretch;
}


/* =========================================================
   FORM
   ========================================================= */

.bcc-form {
  padding: 20px 22px;

  border-right: 1px solid var(--bcc-line);

  background: #ffffff;
}


.bcc-field {
  margin-bottom: 12px;
}


.bcc-field label {
  display: block;

  font-size: 12.5px;

  font-weight: 600;

  margin-bottom: 5px;

  color: #333333;
}


.bcc-field .bcc-hint {
  font-size: 11.5px;

  color: var(--bcc-muted);

  margin-top: 4px;

  line-height: 1.35;
}


/* =========================================================
   TWO COLUMN FIELDS
   ========================================================= */

.bcc-row {
  display: grid;

  grid-template-columns: 1fr 1fr;

  gap: 10px;
}


/* =========================================================
   INPUTS
   ========================================================= */

#bcc-root select,
#bcc-root input[type="number"] {
  width: 100%;

  padding: 8px 10px;

  font-size: 13.5px;

  border: 1px solid #cfcfcf;

  border-radius: 4px;

  background: #ffffff;

  color: #333333;

  font-family: inherit;

  min-height: 40px;

  transition:
    border-color 0.2s ease,
    box-shadow 0.2s ease;
}


#bcc-root select:hover,
#bcc-root input[type="number"]:hover {
  border-color: #999999;
}


#bcc-root select:focus,
#bcc-root input:focus {
  outline: none;

  border-color: #707070;

  box-shadow:
    0 0 0 2px rgba(100, 100, 100, 0.12);
}


/* =========================================================
   BUTTONS
   ========================================================= */

.bcc-btn {
  width: 100%;

  padding: 10px 14px;

  font-size: 13.5px;

  font-weight: 600;

  border-radius: 4px;

  cursor: pointer;

  font-family: inherit;

  margin-top: 3px;

  transition:
    background 0.2s ease,
    border-color 0.2s ease,
    color 0.2s ease;
}


.bcc-btn-primary {
  background: #666666;

  color: #ffffff;

  border: 1px solid #666666;
}


.bcc-btn-primary:hover {
  background: #4f4f4f;

  border-color: #4f4f4f;
}


.bcc-btn-secondary {
  background: #ffffff;

  color: #666666;

  border: 1px solid #777777;

  margin-top: 8px;
}


.bcc-btn-secondary:hover {
  background: #f3f3f3;

  border-color: #555555;

  color: #444444;
}


.bcc-btn:disabled {
  opacity: 0.45;

  cursor: not-allowed;
}


/* =========================================================
   RESULTS
   ========================================================= */

.bcc-results {
  padding: 20px 22px;

  background: #ffffff;

  min-width: 0;

  overflow: hidden;
}


.bcc-empty {
  color: var(--bcc-muted);

  font-size: 14px;

  text-align: center;

  padding: 45px 20px;

  line-height: 1.6;
}


/* =========================================================
   RESULTS TABLE
   ========================================================= */

.bcc-table-wrap {
  overflow-x: auto;

  margin-bottom: 14px;

  border: 1px solid var(--bcc-line);

  border-radius: 4px;

  background: #ffffff;

  width: 100%;
}


.bcc-table {
  width: 100%;

  border-collapse: collapse;

  font-size: 12.5px;

  table-layout: fixed;
}


.bcc-table th,
.bcc-table td {
  text-align: left;

  padding: 8px 10px;

  border-bottom: 1px solid var(--bcc-line);

  white-space: nowrap;
}


.bcc-table th {
  font-size: 10.5px;

  text-transform: uppercase;

  letter-spacing: 0.03em;

  color: #ffffff;

  font-weight: 600;

  background: #707070;
}


.bcc-table th:first-child,
.bcc-table td:first-child {
  width: 38px;
}


.bcc-table th:nth-child(2),
.bcc-table td:nth-child(2) {
  width: 35%;
}


.bcc-table td.bcc-num {
  font-weight: 700;

  color: #666666;
}


.bcc-table tr:last-child td {
  border-bottom: none;
}


.bcc-table td.bcc-desc {
  font-weight: 600;

  color: #3f3f3f;
}


/* =========================================================
   DIAGRAM
   ========================================================= */

.bcc-diagram-wrap {
  display: flex;

  justify-content: center;

  align-items: center;

  width: 100%;

  margin-bottom: 2px;

  overflow: hidden;
}


.bcc-diagram-wrap svg {
  display: block;

  width: 100%;

  max-width: 850px;

  height: auto;

  min-height: 240px;
}


.bcc-diagram-caption {
  text-align: center;

  font-size: 11.5px;

  color: var(--bcc-muted);

  margin-bottom: 12px;
}


/* =========================================================
   LEGEND
   ========================================================= */

.bcc-legend {
  display: flex;

  flex-wrap: wrap;

  gap: 7px 16px;

  font-size: 11.5px;

  color: var(--bcc-muted);

  margin: 3px 0 12px;

  justify-content: center;
}


.bcc-legend span {
  display: inline-flex;

  align-items: center;
}


.bcc-swatch {
  display: inline-block;

  width: 10px;

  height: 10px;

  border-radius: 2px;

  margin-right: 6px;

  vertical-align: middle;
}


/* =========================================================
   NOTES
   ========================================================= */

.bcc-note {
  font-size: 11.5px;

  color: var(--bcc-muted);

  line-height: 1.4;

  margin-top: 3px;
}


/* =========================================================
   FOOTER
   ========================================================= */

.bcc-footer {
  padding: 10px 30px;

  border-top: 1px solid var(--bcc-line);

  background: #fafafa;

  font-size: 11.5px;

  color: var(--bcc-muted);
}


/* =========================================================
   LARGE DESKTOP
   ========================================================= */

@media (min-width: 1200px) {

  .bcc-body {
    grid-template-columns: 290px minmax(0, 1fr);
  }

  .bcc-form {
    padding: 20px 24px;
  }

  .bcc-results {
    padding: 20px 24px;
  }

}


/* =========================================================
   TABLET
   ========================================================= */

@media (max-width: 900px) {

  #bcc-root {
    width: calc(100vw - 24px);

    max-width: none;

    margin-left: 50%;

    transform: translateX(-50%);
  }

  .bcc-body {
    grid-template-columns: 270px minmax(0, 1fr);
  }

  .bcc-form {
    padding: 18px;
  }

  .bcc-results {
    padding: 18px;
  }

}


/* =========================================================
   MOBILE
   ========================================================= */

@media (max-width: 700px) {

  #bcc-root {
    width: calc(100% - 20px);

    margin-left: 0;

    margin-right: 0;

    transform: none;

    max-width: none;
  }


  .bcc-body {
    grid-template-columns: 1fr;
  }


  .bcc-form {
    border-right: none;

    border-bottom: 1px solid var(--bcc-line);

    padding: 18px;
  }


  .bcc-results {
    padding: 18px;
  }


  .bcc-header {
    padding: 20px;
  }


  .bcc-header h2 {
    font-size: 21px;
  }


  .bcc-header p {
    font-size: 13px;
  }


  .bcc-row {
    grid-template-columns: 1fr;

    gap: 0;
  }


  .bcc-table {
    min-width: 600px;
  }


  .bcc-diagram-wrap {
    overflow-x: auto;
  }


  .bcc-diagram-wrap svg {
    min-width: 600px;

    max-width: none;
  }


  .bcc-footer {
    padding: 10px 20px;
  }

}


/* =========================================================
   SMALL MOBILE
   ========================================================= */

@media (max-width: 450px) {

  #bcc-root {
    width: calc(100% - 12px);
  }


  .bcc-header {
    padding: 18px;
  }


  .bcc-header h2 {
    font-size: 19px;
  }


  .bcc-form,
  .bcc-results {
    padding: 15px;
  }

}

</style>


<!-- =========================================================
     HEADER
     ========================================================= -->

<div class="bcc-header">

  <h2>KDP COVER CALCULATOR</h2>

  <p>
    Enter your book's specifications to calculate accurate cover dimensions,
    spine width, bleed, safe area and barcode placement. You can also download
    a guide template for your cover design.
  </p>

</div>


<!-- =========================================================
     BODY
     ========================================================= -->

<div class="bcc-body">


  <!-- =======================================================
       FORM
       ======================================================= -->

  <div class="bcc-form">


    <div class="bcc-field">

      <label for="bcc-binding">
        Binding type
      </label>

      <select id="bcc-binding">

        <option value="paperback">
          Paperback
        </option>

        <option value="hardcover">
          Hardcover (case wrap)
        </option>

      </select>

    </div>


    <div class="bcc-field">

      <label for="bcc-interior">
        Interior type
      </label>

      <select id="bcc-interior">

        <option value="bw">
          Black &amp; white
        </option>

        <option value="standard-color">
          Standard color
        </option>

        <option value="premium-color">
          Premium color
        </option>

      </select>

    </div>


    <div class="bcc-field" id="bcc-paper-field">

      <label for="bcc-paper">
        Paper type
      </label>

      <select id="bcc-paper">

        <option value="white">
          White
        </option>

        <option value="cream">
          Cream
        </option>

      </select>

    </div>


    <div class="bcc-field">

      <label for="bcc-units">
        Measurement units
      </label>

      <select id="bcc-units">

        <option value="in">
          Inches
        </option>

        <option value="mm" selected="">
          Millimeters
        </option>

        <option value="cm">
          Centimeters
        </option>

      </select>

    </div>


    <div class="bcc-field">

      <label for="bcc-trim">
        Trim size
      </label>

      <select id="bcc-trim">

        <option value="5x8">
          5" x 8"
        </option>

        <option value="5.25x8" selected="">
          5.25" x 8"
        </option>

        <option value="5.5x8.5">
          5.5" x 8.5"
        </option>

        <option value="6x9">
          6" x 9"
        </option>

        <option value="7x10">
          7" x 10"
        </option>

        <option value="8.5x11">
          8.5" x 11"
        </option>

        <option value="custom">
          Custom...
        </option>

      </select>

    </div>


    <div class="bcc-row" id="bcc-custom-trim" style="display:none;">

      <div class="bcc-field">

        <label for="bcc-custom-w">
          Width (in)
        </label>

        <input type="number" id="bcc-custom-w" min="4" max="14" step="0.01" value="6">

      </div>


      <div class="bcc-field">

        <label for="bcc-custom-h">
          Height (in)
        </label>

        <input type="number" id="bcc-custom-h" min="4" max="14" step="0.01" value="9">

      </div>

    </div>


    <div class="bcc-field">

      <label for="bcc-pages">
        Page count
      </label>

      <input type="number" id="bcc-pages" min="24" max="828" step="1" value="500">

      <div class="bcc-hint">
        Number of pages at your final formatted trim size.
      </div>

    </div>


    <button class="bcc-btn bcc-btn-primary" id="bcc-calc">
      CALCULATE DIMENSIONS
    </button>


    <button class="bcc-btn bcc-btn-secondary" id="bcc-download" disabled="">
      DOWNLOAD GUIDE TEMPLATE (PDF)
    </button>


  </div>


  <!-- =======================================================
       RESULTS
       ======================================================= -->

  <div class="bcc-results">


    <div id="bcc-empty" class="bcc-empty">

      Fill in your book's details and select<br>

      "Calculate dimensions" to see your full
      cover measurements.

    </div>


    <div id="bcc-output" style="display:none;">


      <!-- ===================================================
           RESULTS TABLE
           =================================================== -->

      <div class="bcc-table-wrap">

        <table class="bcc-table">

          <thead>

            <tr>

              <th>#</th>

              <th>
                Description
              </th>

              <th id="bcc-th-w">
                Width (mm)
              </th>

              <th id="bcc-th-h">
                Height (mm)
              </th>

            </tr>

          </thead>


          <tbody id="bcc-table-body"></tbody>

        </table>

      </div>


      <!-- ===================================================
           DIAGRAM
           =================================================== -->

      <div class="bcc-diagram-wrap">

        <svg id="bcc-svg" width="850" height="330" viewBox="0 0 850 330" preserveAspectRatio="xMidYMid meet"></svg>

      </div>


      <div class="bcc-diagram-caption">

        Image for reference only —
        not to exact scale on screen.

      </div>


      <!-- ===================================================
           LEGEND
           =================================================== -->

      <div class="bcc-legend">


        <span>

          <i class="bcc-swatch" style="background:#888888"></i>

          Bleed

        </span>


        <span>

          <i class="bcc-swatch" style="background:#666666"></i>

          Trim / cut line

        </span>


        <span>

          <i class="bcc-swatch" style="background:#b23b3b"></i>

          Safe area (keep text inside)

        </span>


        <span>

          <i class="bcc-swatch" style="background:#6f6f6f"></i>

          Barcode area

        </span>


      </div>


      <!-- ===================================================
           HARDCOVER NOTE
           =================================================== -->

      <div class="bcc-note" id="bcc-hardcover-note" style="display:none;">

        Hardcover wrap dimensions are estimated
        (board, wrap and hinge allowances vary by
        printer). Confirm exact hardcover specifications
        with your printer before ordering.

      </div>


      <div class="bcc-note">

        Keep all text and important images inside
        the red safe-area line. The bleed area will be
        trimmed off — extend background images into it,
        but don't put text there. Always check the
        downloaded template against your printer's own
        specifications before final submission.

      </div>


    </div>


  </div>


</div>


<!-- =========================================================
     FOOTER
     ========================================================= -->

<div class="bcc-footer">

  Built for authors —
  works entirely in your browser,
  nothing is uploaded.

</div>


</div>


<!-- =========================================================
     PDF LIBRARY
     ========================================================= -->

<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>


<script>

(function () {


  var root =
    document.getElementById('bcc-root');


  var bindingEl =
    root.querySelector('#bcc-binding');


  var interiorEl =
    root.querySelector('#bcc-interior');


  var paperEl =
    root.querySelector('#bcc-paper');


  var paperField =
    root.querySelector('#bcc-paper-field');


  var unitsEl =
    root.querySelector('#bcc-units');


  var trimEl =
    root.querySelector('#bcc-trim');


  var customWrap =
    root.querySelector('#bcc-custom-trim');


  var customW =
    root.querySelector('#bcc-custom-w');


  var customH =
    root.querySelector('#bcc-custom-h');


  var pagesEl =
    root.querySelector('#bcc-pages');


  var calcBtn =
    root.querySelector('#bcc-calc');


  var dlBtn =
    root.querySelector('#bcc-download');


  var emptyEl =
    root.querySelector('#bcc-empty');


  var outputEl =
    root.querySelector('#bcc-output');


  var svg =
    root.querySelector('#bcc-svg');


  var hcNote =
    root.querySelector('#bcc-hardcover-note');


  var tableBody =
    root.querySelector('#bcc-table-body');


  var thW =
    root.querySelector('#bcc-th-w');


  var thH =
    root.querySelector('#bcc-th-h');


  var lastResult = null;


  /* =========================================================
     CONSTANTS
     ========================================================= */

  var BLEED = 0.125;

  var MARGIN = 0.125;

  var SPINE_MARGIN = 0.0625;

  var BARCODE_MARGIN = 0.25;

  var BARCODE_W = 2;

  var BARCODE_H = 1.2;


  /* =========================================================
     PAPER OPTIONS
     ========================================================= */

  function updatePaperOptions() {

    var interior =
      interiorEl.value;

    paperEl.innerHTML = '';

    var opts;

    if (interior === 'bw') {

      opts = [
        ['white', 'White'],
        ['cream', 'Cream']
      ];

    } else {

      opts = [
        ['white', 'White (color paper)']
      ];

    }


    opts.forEach(
      function (o) {

        var el =
          document.createElement('option');

        el.value =
          o[0];

        el.textContent =
          o[1];

        paperEl.appendChild(el);

      }
    );

  }


  /* =========================================================
     PAPER FACTOR
     ========================================================= */

  function paperFactor(
    interior,
    paper
  ) {

    if (interior === 'bw') {

      return paper === 'cream'
        ? 0.0025
        : 0.002252;

    }


    if (
      interior ===
      'standard-color'
    ) {

      return 0.002347;

    }


    return 0.002252;

  }


  /* =========================================================
     GET TRIM SIZE
     ========================================================= */

  function getTrim() {

    if (
      trimEl.value ===
      'custom'
    ) {

      return {

        w:
          parseFloat(
            customW.value
          ) || 6,

        h:
          parseFloat(
            customH.value
          ) || 9

      };

    }


    var parts =
      trimEl.value.split('x');


    return {

      w:
        parseFloat(parts[0]),

      h:
        parseFloat(parts[1])

    };

  }


  /* =========================================================
     UNIT CONVERSION
     ========================================================= */

  function convert(
    inches,
    units
  ) {

    if (units === 'cm') {

      return inches * 2.54;

    }


    if (units === 'mm') {

      return inches * 25.4;

    }


    return inches;

  }


  /* =========================================================
     CALCULATE
     ========================================================= */

  function calculate() {

    var trim =
      getTrim();


    var pages =
      Math.max(
        1,
        parseInt(
          pagesEl.value,
          10
        ) || 0
      );


    var factor =
      paperFactor(
        interiorEl.value,
        paperEl.value
      );


    var spine =
      pages * factor;


    var isHardcover =
      bindingEl.value ===
      'hardcover';


    var wrap =
      isHardcover
        ? 0.75
        : 0;


    var units =
      unitsEl.value;


    var fullW =
      trim.w * 2 +
      spine +
      BLEED * 2 +
      wrap * 2;


    var fullH =
      trim.h +
      BLEED * 2 +
      wrap * 2;


    var frontW =
      trim.w;


    var frontH =
      trim.h;


    var safeW =
      trim.w -
      MARGIN;


    var safeH =
      trim.h -
      MARGIN * 2;


    var spineSafeW =
      Math.max(
        spine -
        SPINE_MARGIN * 2,
        0
      );


    var spineSafeH =
      trim.h -
      MARGIN * 2;


    lastResult = {

      trim:
        trim,

      spine:
        spine,

      isHardcover:
        isHardcover,

      units:
        units,

      pages:
        pages,

      wrap:
        wrap,

      fullW:
        fullW,

      fullH:
        fullH,

      frontW:
        frontW,

      frontH:
        frontH,

      safeW:
        safeW,

      safeH:
        safeH,

      spineSafeW:
        spineSafeW,

      spineSafeH:
        spineSafeH

    };


    thW.textContent =
      'Width (' +
      units +
      ')';


    thH.textContent =
      'Height (' +
      units +
      ')';


    var rows = [

      [
        '1',
        'Full Cover',
        fullW,
        fullH
      ],

      [
        '2',
        'Front Cover',
        frontW,
        frontH
      ],

      [
        '3',
        'Safe Area',
        safeW,
        safeH
      ],

      [
        '4',
        'Bleed',
        BLEED,
        BLEED
      ],

      [
        '5',
        'Margin',
        MARGIN,
        MARGIN
      ],

      [
        '6',
        'Spine',
        spine,
        trim.h
      ],

      [
        '7',
        'Spine Safe Area',
        spineSafeW,
        spineSafeH
      ],

      [
        '8',
        'Spine Margin',
        SPINE_MARGIN,
        SPINE_MARGIN
      ],

      [
        '9',
        'Barcode Margin',
        BARCODE_MARGIN,
        BARCODE_MARGIN
      ]

    ];


    tableBody.innerHTML =
      rows.map(
        function (r) {

          return (

            '<tr>' +

              '<td class="bcc-num">' +
                r[0] +
              '</td>' +

              '<td class="bcc-desc">' +
                r[1] +
              '</td>' +

              '<td>' +

                convert(
                  r[2],
                  units
                ).toFixed(
                  units === 'in'
                    ? 3
                    : 2
                ) +

              '</td>' +

              '<td>' +

                convert(
                  r[3],
                  units
                ).toFixed(
                  units === 'in'
                    ? 3
                    : 2
                ) +

              '</td>' +

            '</tr>'

          );

        }
      ).join('');


    hcNote.style.display =
      isHardcover
        ? ''
        : 'none';


    drawDiagram(
      lastResult
    );


    emptyEl.style.display =
      'none';


    outputEl.style.display =
      '';


    dlBtn.disabled =
      false;

  }


  /* =========================================================
     DRAW DIAGRAM
     ========================================================= */

  function drawDiagram(r) {

    var totalW =
      r.trim.w * 2 +
      r.spine +
      r.wrap * 2;


    var totalH =
      r.trim.h +
      r.wrap * 2;


    var maxW =
      650;


    var maxH =
      245;


    var scale =
      Math.min(
        maxW / totalW,
        maxH / totalH
      );


    var w =
      totalW * scale;


    var h =
      totalH * scale;


    var bleedPx =
      BLEED * scale;


    var marginPx =
      MARGIN * scale;


    var spineMarginPx =
      SPINE_MARGIN * scale;


    var offsetX =
      100;


    var offsetY =
      52;


    var ns =
      'http://www.w3.org/2000/svg';


    while (
      svg.firstChild
    ) {

      svg.removeChild(
        svg.firstChild
      );

    }


    svg.setAttribute(
      'viewBox',
      '0 0 850 330'
    );


    function rect(
      x,
      y,
      rw,
      rh,
      opts
    ) {

      opts =
        opts || {};


      var el =
        document.createElementNS(
          ns,
          'rect'
        );


      el.setAttribute(
        'x',
        x
      );


      el.setAttribute(
        'y',
        y
      );


      el.setAttribute(
        'width',
        rw
      );


      el.setAttribute(
        'height',
        rh
      );


      el.setAttribute(
        'fill',
        opts.fill ||
        'none'
      );


      el.setAttribute(
        'stroke',
        opts.stroke ||
        '#666666'
      );


      el.setAttribute(
        'stroke-width',
        opts.sw ||
        1
      );


      if (opts.dash) {

        el.setAttribute(
          'stroke-dasharray',
          opts.dash
        );

      }


      svg.appendChild(
        el
      );


      return el;

    }


    function line(
      x1,
      y1,
      x2,
      y2,
      opts
    ) {

      opts =
        opts || {};


      var l =
        document.createElementNS(
          ns,
          'line'
        );


      l.setAttribute(
        'x1',
        x1
      );


      l.setAttribute(
        'y1',
        y1
      );


      l.setAttribute(
        'x2',
        x2
      );


      l.setAttribute(
        'y2',
        y2
      );


      l.setAttribute(
        'stroke',
        opts.stroke ||
        '#888888'
      );


      l.setAttribute(
        'stroke-width',
        opts.sw ||
        1
      );


      if (opts.dash) {

        l.setAttribute(
          'stroke-dasharray',
          opts.dash
        );

      }


      svg.appendChild(
        l
      );

    }


    function text(
      x,
      y,
      str,
      opts
    ) {

      opts =
        opts || {};


      var t =
        document.createElementNS(
          ns,
          'text'
        );


      t.setAttribute(
        'x',
        x
      );


      t.setAttribute(
        'y',
        y
      );


      t.setAttribute(
        'font-size',
        opts.size ||
        9
      );


      t.setAttribute(
        'text-anchor',
        opts.anchor ||
        'middle'
      );


      t.setAttribute(
        'fill',
        opts.fill ||
        '#6f6f6f'
      );


      t.setAttribute(
        'font-family',
        '-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Arial, sans-serif'
      );


      if (opts.weight) {

        t.setAttribute(
          'font-weight',
          opts.weight
        );

      }


      t.textContent =
        str;


      svg.appendChild(
        t
      );


      return t;

    }


    function badge(
      x,
      y,
      n
    ) {

      var c =
        document.createElementNS(
          ns,
          'circle'
        );


      c.setAttribute(
        'cx',
        x
      );


      c.setAttribute(
        'cy',
        y
      );


      c.setAttribute(
        'r',
        9
      );


      c.setAttribute(
        'fill',
        '#666666'
      );


      svg.appendChild(
        c
      );


      text(
        x,
        y + 3.5,
        n,
        {
          fill: '#ffffff',
          size: 10,
          weight: '700'
        }
      );

    }


    function crop(
      x,
      y,
      dx,
      dy
    ) {

      line(
        x,
        y,
        x + dx * 10,
        y,
        {
          stroke: '#333333',
          sw: 0.75
        }
      );


      line(
        x,
        y,
        x,
        y + dy * 10,
        {
          stroke: '#333333',
          sw: 0.75
        }
      );

    }


    var backW =
      r.trim.w *
      scale;


    var frontW =
      r.trim.w *
      scale;


    var spineW =
      r.spine *
      scale;


    var wrapPx =
      r.wrap *
      scale;


    /* Full bleed boundary */

    rect(
      offsetX,
      offsetY,
      w,
      h,
      {
        fill: '#fafafa',
        stroke: '#888888',
        dash: '4,3'
      }
    );


    /* Trim rectangle */

    var trimX =
      offsetX +
      bleedPx +
      wrapPx;


    var trimY =
      offsetY +
      bleedPx +
      wrapPx;


    var trimW =
      w -
      (bleedPx +
      wrapPx) * 2;


    var trimH =
      h -
      (bleedPx +
      wrapPx) * 2;


    rect(
      trimX,
      trimY,
      trimW,
      trimH,
      {
        stroke: '#666666',
        sw: 1.25
      }
    );


    /* Crop marks */

    crop(
      trimX,
      trimY,
      -1,
      -1
    );


    crop(
      trimX + trimW,
      trimY,
      1,
      -1
    );


    crop(
      trimX,
      trimY + trimH,
      -1,
      1
    );


    crop(
      trimX + trimW,
      trimY + trimH,
      1,
      1
    );


    /* Spine */

    var backEdgeX =
      trimX +
      backW;


    var frontEdgeX =
      backEdgeX +
      spineW;


    line(
      backEdgeX,
      trimY,
      backEdgeX,
      trimY + trimH,
      {
        stroke: '#666666',
        sw: 1
      }
    );


    line(
      frontEdgeX,
      trimY,
      frontEdgeX,
      trimY + trimH,
      {
        stroke: '#666666',
        sw: 1
      }
    );


    /* Safe area */

    rect(
      trimX,
      trimY + marginPx,
      backW - marginPx,
      trimH - marginPx * 2,
      {
        stroke: '#b23b3b',
        dash: '3,2'
      }
    );


    rect(
      backEdgeX +
      spineW +
      marginPx,
      trimY + marginPx,
      frontW - marginPx,
      trimH - marginPx * 2,
      {
        stroke: '#b23b3b',
        dash: '3,2'
      }
    );


    /* Spine safe area */

    if (spineW > 6) {

      rect(
        backEdgeX +
        spineMarginPx,
        trimY + marginPx,
        spineW -
        spineMarginPx * 2,
        trimH -
        marginPx * 2,
        {
          stroke: '#b23b3b',
          dash: '2,2',
          sw: 0.75
        }
      );

    }


    /* Barcode */

    var bcW =
      Math.min(
        BARCODE_W *
        scale,
        backW *
        0.55
      );


    var bcH =
      Math.min(
        BARCODE_H *
        scale,
        trimH *
        0.3
      );


    var bcX =
      backEdgeX -
      BARCODE_MARGIN *
      scale -
      bcW;


    var bcY =
      trimY +
      trimH -
      BARCODE_MARGIN *
      scale -
      bcH;


    rect(
      bcX,
      bcY,
      bcW,
      bcH,
      {
        stroke: '#6f6f6f',
        sw: 1
      }
    );


    text(
      bcX +
      bcW / 2,
      bcY +
      bcH / 2 +
      3,
      'ISBN',
      {
        size: 8,
        fill: '#6f6f6f'
      }
    );


    /* Labels */

    text(
      trimX +
      backW / 2,
      trimY +
      trimH / 2,
      'Back Cover',
      {
        size: 11,
        fill: '#888888'
      }
    );


    if (spineW > 16) {

      text(
        backEdgeX +
        spineW / 2,
        trimY +
        trimH / 2,
        'Spine',
        {
          size: 9,
          fill: '#888888'
        }
      );

    }


    text(
      frontEdgeX +
      frontW / 2,
      trimY +
      trimH / 2,
      'Front Cover',
      {
        size: 11,
        fill: '#888888'
      }
    );


    /* Top callouts */

    var topY =
      offsetY -
      18;


    var edges = [

      {
        n: '1',
        x:
          offsetX +
          w
      },

      {
        n: '2',
        x:
          trimX +
          trimW
      },

      {
        n: '3',
        x:
          trimX +
          trimW -
          marginPx
      },

      {
        n: '4',
        x:
          trimX
      },

      {
        n: '5',
        x:
          trimX -
          marginPx >
          offsetX
            ? trimX -
              marginPx
            : offsetX +
              4
      }

    ];


    edges.forEach(
      function (e, i) {

        var bx =
          800;


        var by =
          35 +
          i * 20;


        badge(
          bx,
          by,
          e.n
        );


        line(
          bx - 9,
          by,
          e.x,
          topY + 8,
          {
            stroke:
              '#c5c5c5',
            sw:
              0.75
          }
        );


        line(
          e.x,
          topY + 8,
          e.x,
          trimY,
          {
            stroke:
              '#c5c5c5',
            sw:
              0.75
          }
        );

      }
    );


    /* Spine callouts */

    var spineEdges = [

      {
        n: '6',
        x:
          backEdgeX
      },

      {
        n: '7',
        x:
          backEdgeX +
          spineMarginPx
      },

      {
        n: '8',
        x:
          backEdgeX +
          spineMarginPx +
          4
      }

    ];


    spineEdges.forEach(
      function (e, i) {

        var bx =
          55;


        var by =
          trimY +
          28 +
          i * 22;


        badge(
          bx,
          by,
          e.n
        );


        line(
          bx + 9,
          by,
          e.x - 6,
          by,
          {
            stroke:
              '#c5c5c5',
            sw:
              0.75
          }
        );

      }
    );


    /* Barcode callout */

    badge(
      bcX - 16,
      bcY +
      bcH +
      14,
      '9'
    );


    line(
      bcX - 9,
      bcY +
      bcH +
      8,
      bcX + 6,
      bcY +
      bcH,
      {
        stroke:
          '#c5c5c5',
        sw:
          0.75
      }
    );


    text(
      offsetX +
      w / 2,
      offsetY +
      h +
      18,
      'Image for reference only',
      {
        size: 9,
        fill: '#777777'
      }
    );

  }


  /* =========================================================
     DOWNLOAD PDF TEMPLATE
     ========================================================= */

  function downloadTemplate() {

    if (
      !lastResult ||
      !window.jspdf
    ) {

      return;

    }


    var jsPDF =
      window.jspdf.jsPDF;


    var r =
      lastResult;


    var fullW =
      r.fullW;


    var fullH =
      r.fullH;


    var doc =
      new jsPDF({

        orientation:
          fullW > fullH
            ? 'landscape'
            : 'portrait',

        unit:
          'in',

        format:
          [
            fullW,
            fullH
          ]

      });


    var bleedOffset =
      BLEED +
      r.wrap;


    var trimX =
      bleedOffset;


    var trimY =
      bleedOffset;


    var trimTotalW =
      fullW -
      bleedOffset * 2;


    var trimTotalH =
      fullH -
      bleedOffset * 2;


    var backW =
      r.trim.w;


    var spineW =
      r.spine;


    var backEdge =
      trimX +
      backW;


    var frontEdge =
      backEdge +
      spineW;


    /* Bleed */

    doc.setDrawColor(
      136,
      136,
      136
    );


    doc.setLineWidth(
      0.008
    );


    doc.setLineDashPattern(
      [0.05, 0.04],
      0
    );


    doc.rect(
      0.02,
      0.02,
      fullW - 0.04,
      fullH - 0.04
    );


    /* Trim */

    doc.setDrawColor(
      102,
      102,
      102
    );


    doc.setLineWidth(
      0.012
    );


    doc.setLineDashPattern(
      [],
      0
    );


    doc.rect(
      trimX,
      trimY,
      trimTotalW,
      trimTotalH
    );


    /* Crop marks */

    var cm =
      0.15;


    function cropMark(
      x,
      y,
      dx,
      dy
    ) {

      doc.line(
        x,
        y,
        x +
        dx * cm,
        y
      );


      doc.line(
        x,
        y,
        x,
        y +
        dy * cm
      );

    }


    doc.setLineWidth(
      0.006
    );


    cropMark(
      trimX,
      trimY,
      -1,
      -1
    );


    cropMark(
      trimX +
      trimTotalW,
      trimY,
      1,
      -1
    );


    cropMark(
      trimX,
      trimY +
      trimTotalH,
      -1,
      1
    );


    cropMark(
      trimX +
      trimTotalW,
      trimY +
      trimTotalH,
      1,
      1
    );


    /* Spine */

    doc.line(
      backEdge,
      trimY,
      backEdge,
      trimY +
      trimTotalH
    );


    doc.line(
      frontEdge,
      trimY,
      frontEdge,
      trimY +
      trimTotalH
    );


    /* Safe area */

    doc.setDrawColor(
      178,
      59,
      59
    );


    doc.setLineWidth(
      0.008
    );


    doc.setLineDashPattern(
      [0.04, 0.03],
      0
    );


    doc.rect(
      trimX,
      trimY +
      MARGIN,
      backW -
      MARGIN,
      trimTotalH -
      MARGIN * 2
    );


    doc.rect(
      frontEdge +
      MARGIN,
      trimY +
      MARGIN,
      backW -
      MARGIN,
      trimTotalH -
      MARGIN * 2
    );


    if (spineW > 0.2) {

      doc.rect(
        backEdge +
        SPINE_MARGIN,
        trimY +
        MARGIN,
        Math.max(
          spineW -
          SPINE_MARGIN * 2,
          0.01
        ),
        trimTotalH -
        MARGIN * 2
      );

    }


    /* Barcode */

    doc.setDrawColor(
      107,
      107,
      107
    );


    doc.setLineDashPattern(
      [],
      0
    );


    doc.setLineWidth(
      0.01
    );


    var bcW =
      Math.min(
        BARCODE_W,
        backW * 0.55
      );


    var bcH =
      Math.min(
        BARCODE_H,
        trimTotalH * 0.3
      );


    var bcX =
      backEdge -
      BARCODE_MARGIN -
      bcW;


    var bcY =
      trimY +
      trimTotalH -
      BARCODE_MARGIN -
      bcH;


    doc.rect(
      bcX,
      bcY,
      bcW,
      bcH
    );


    doc.setFontSize(
      6
    );


    doc.setTextColor(
      107,
      107,
      107
    );


    doc.text(
      'ISBN barcode area',
      bcX +
      bcW / 2,
      bcY +
      bcH / 2,
      {
        align:
          'center'
      }
    );


    /* Labels */

    doc.setFontSize(
      7.5
    );


    doc.setTextColor(
      90,
      90,
      90
    );


    doc.text(
      'BACK COVER',
      trimX +
      backW / 2,
      trimY +
      trimTotalH / 2,
      {
        align:
          'center'
      }
    );


    doc.text(
      'FRONT COVER',
      frontEdge +
      backW / 2,
      trimY +
      trimTotalH / 2,
      {
        align:
          'center'
      }
    );


    if (spineW > 0.15) {

      doc.text(
        'SPINE',
        backEdge +
        spineW / 2,
        trimY +
        trimTotalH / 2,
        {
          align:
            'center',
          angle:
            90
        }
      );

    }


    /* Footer */

    doc.setFontSize(
      6
    );


    var legend =
      'Full ' +
      fullW.toFixed(3) +
      'x' +
      fullH.toFixed(3) +
      'in | Spine ' +
      spineW.toFixed(3) +
      'in | Bleed 0.125in | Margin 0.125in | Spine margin 0.0625in | Barcode margin 0.25in';


    doc.text(
      legend,
      fullW / 2,
      fullH - 0.06,
      {
        align:
          'center'
      }
    );


    doc.save(
      'cover-template-' +
      fullW.toFixed(2) +
      'x' +
      fullH.toFixed(2) +
      'in.pdf'
    );

  }


  /* =========================================================
     EVENT LISTENERS
     ========================================================= */

  trimEl.addEventListener(
    'change',
    function () {

      customWrap.style.display =
        trimEl.value === 'custom'
          ? 'grid'
          : 'none';

    }
  );


  interiorEl.addEventListener(
    'change',
    updatePaperOptions
  );


  calcBtn.addEventListener(
    'click',
    calculate
  );


  dlBtn.addEventListener(
    'click',
    downloadTemplate
  );


  updatePaperOptions();


})();

</script>
