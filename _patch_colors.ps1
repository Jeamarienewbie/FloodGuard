$f = 'cloud_dashboard.html'
$c = Get-Content $f -Raw -Encoding UTF8

$emojis = @('🌊', '🔔', '⚠️', '🚨', '🆘', '💧', '🖥️', '📈', '🔢', '☁️', '✅', '🔴', '🟢', '📋', '⬇', '🔍', '↺', '📡', '⚡', '📊', '🌐')
foreach ($emoji in $emojis) {
    $c = $c.Replace("$emoji ", "").Replace($emoji, "")
}

$c = $c.Replace('✓ DRY', 'DRY').Replace('WET WET', 'WET').Replace('  DRY', 'DRY')

$c = $c.Replace('--deep: #010d1c;', '--deep: #001a33;')
$c = $c.Replace('--dark: #041525;', '--dark: #00294d;')
$c = $c.Replace('--mid: #071f36;', '--mid: #004080;')
$c = $c.Replace('--surface: #0b2d50;', '--surface: #005c99;')
$c = $c.Replace('--border: rgba(30, 100, 170, 0.22);', '--border: rgba(0, 255, 255, 0.25);')
$c = $c.Replace('--glow: rgba(30, 120, 220, 0.12);', '--glow: rgba(0, 180, 255, 0.15);')
$c = $c.Replace('--white: #e8f3ff;', '--white: #e0f7fa;')
$c = $c.Replace('--muted: #6a9bbf;', '--muted: #80deea;')
$c = $c.Replace('--gold: #f59e0b;', '--gold: #00e5ff;')
$c = $c.Replace('--gold-lt: #fbbf24;', '--gold-lt: #84ffff;')
$c = $c.Replace('--gold-bg: rgba(245, 158, 11, 0.12);', '--gold-bg: rgba(0, 229, 255, 0.15);')
$c = $c.Replace('--accent: #1d6fa8;', '--accent: #00b8d4;')
$c = $c.Replace('--bright: #2596e1;', '--bright: #18ffff;')

$c = $c.Replace('--c0: #22c55e;', '--c0: #00e676;')
$c = $c.Replace('--c1: #f59e0b;', '--c1: #ffea00;')
$c = $c.Replace('--c2: #f97316;', '--c2: #ff9100;')
$c = $c.Replace('--c3: #ef4444;', '--c3: #ff1744;')

$c = $c.Replace('#22c55e', 'var(--c0)')
$c = $c.Replace('#f59e0b', 'var(--c1)')
$c = $c.Replace('#f97316', 'var(--c2)')
$c = $c.Replace('#ef4444', 'var(--c3)')

Set-Content $f -Value $c -Encoding UTF8
Write-Host "Replaced!"
