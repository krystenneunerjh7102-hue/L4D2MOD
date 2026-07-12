printl("[XNP ATS CORE TOP] version=0.7.7-tongue-escape-public-release");
printl("[XNP ATS BUILD] GR_077_TONGUE_ESCAPE_PUBLIC_RELEASE_A");

local XNP_GhostrunnerExecutionBranchTable =
{
    Version = "0.7.7-tongue-escape-public-release",
    BuildMarker = "GR_077_TONGUE_ESCAPE_PUBLIC_RELEASE_A",
    ConfigFile = "xnp_ghostrunner_execution_branch/settings.cfg",
    ThinkName = "xnp_ghostrunner_execution_branch_thinker",
    OverlayMaterial = "vgui/xnp_ghostrunner/ghostwalk_overlay_100",
    Thinker = null,
    EventsRegistered = false,
    NotifiedUsers = {},
    PlayerState = {},
    InternalDamageIgnore = {},
    SpecialHitDedup = {},
    DashDamageContext = {},
    AreaStunControllers = {},
    TankStaggerAnimationState = {},
    AreaFxCleanup = {},
    SmokerBreakoutPending = {},
    BalanceNoticeShown = false,
    TraceTableFailureLogged = false,
    RuntimeHandlerEnterLogged = false,
    ActionSerial = 0,
    AirSessionSerial = 0,

    STATE_GROUND_IDLE = "GROUND_IDLE",
    STATE_GROUND_HOLD = "GROUND_HOLD",
    STATE_AIR_HOLD = "AIR_HOLD",
    STATE_AIR_HOLD_CHAIN = "AIR_HOLD_CHAIN",
    STATE_AIR_DASH = "AIR_DASH",
    STATE_AIR_SPENT = "AIR_SPENT",
    STATE_RESETTING = "RESETTING",

    Defaults =
    {
        enabled = true,
        version = "0.7.7-tongue-escape-public-release",
        workshop_id = "LOCAL_TEST",
        walk_button_mask = 131072,
        attack_button_mask = 1,
        think_interval = 0.03,
        slow_fall_max_down_speed = -35.0,
        dash_speed = 1450.0,
        dash_duration = 0.30,
        dash_max_distance = 500.0,
        dash_sweep_radius = 180.0,
        dash_vertical_component_limit = 0.45,
        dash_damage = 1200.0,
        dash_front_range = 600.0,
        dash_front_half_angle = 50.0,
        knockback_force = 900.0,
        special_heal = 30.0,
        skill_self_damage = 5.0,
        skill_charge_system_enabled = true,
        skill_charge_max = 3,
        skill_charge_initial = 3,
        skill_charge_cost_per_dash = 1,
        skill_charge_recharge_seconds = 4.0,
        special_hit_charge_restore = 2,
        skill_charge_preserve_partial_recharge = true,
        skill_requires_confirmed_airborne = true,
        skill_airborne_confirm_ticks = 2,
        skill_airborne_confirm_seconds = 0.06,
        skill_airborne_min_ground_clearance = 6.0,
        skill_ground_press_requires_airborne_repress = true,
        skill_air_session_max_attack_dashes = 3,
        skill_chain_requires_qualified_special_hit = true,
        skill_chain_requires_skill_key_held = true,
        skill_chain_requires_fresh_attack_press = true,
        skill_chain_common_hits_do_not_qualify = true,
        skill_chain_area_stun_does_not_qualify = true,
        skill_jump_input_buffer_enabled = true,
        skill_jump_input_buffer_seconds = 0.12,
        skill_jump_input_buffer_require_upward_motion = true,
        skill_jump_input_buffer_min_upward_velocity = 40.0,
        skill_jump_input_buffer_require_key_still_held = true,
        skill_held_air_activation_enabled = true,
        skill_held_air_activation_once_per_air_session = true,
        skill_held_air_activation_requires_charge = true,
        skill_held_air_activation_requires_melee = true,
        ground_dash_enabled = true,
        ground_dash_requires_melee = true,
        ground_dash_requires_charge = true,
        ground_dash_once_per_skill_hold = true,
        ground_attack_dash_enabled = true,
        ground_normal_dash_enabled = true,
        ground_dash_force_displacement = false,
        ground_dash_use_existing_area_pulse = true,
        ground_dash_smoker_breakout_enabled = true,
        tongue_manual_escape_enabled = true,
        tongue_manual_escape_requires_melee = true,
        tongue_manual_escape_requires_charge = true,
        tongue_manual_escape_charge_cost = 1,
        tongue_manual_escape_health_cost = 0,
        tongue_manual_escape_once_per_grab = true,
        tongue_manual_escape_recent_press_buffer = 0.25,
        tongue_manual_escape_aftershock_enabled = true,
        tongue_manual_escape_regrab_protection_enabled = true,
        airborne_gate_debug = false,
        triple_slash_debug = false,
        tank_stun_verify_debug = false,
        skill_cooldown_enabled = true,
        skill_cooldown_seconds = 8.0,
        skill_cooldown_requires_key_release = true,
        held_dash_loop_enabled = false,
        held_dash_auto_trigger_delay = 0.35,
        held_dash_rearm_delay = 0.08,
        normal_dash_health_cost = 3.0,
        attack_dash_health_cost = 5.0,
        normal_dash_damage_enabled = false,
        normal_dash_push_enabled = true,
        normal_dash_common_push_horizontal = 260.0,
        normal_dash_common_push_vertical = 65.0,
        normal_dash_special_push_horizontal = 220.0,
        normal_dash_special_push_vertical = 60.0,
        normal_dash_tank_push_horizontal = 80.0,
        normal_dash_tank_push_vertical = 20.0,
        normal_dash_witch_push_horizontal = 60.0,
        normal_dash_witch_push_vertical = 10.0,
        dash_infected_passthrough_enabled = true,
        post_dash_brake_enabled = true,
        post_dash_horizontal_scale = 0.10,
        post_dash_max_horizontal_speed = 60.0,
        effective_health_cap = 100.0,
        one_action_per_airtime = true,
        fast_melee_cooldown_enabled = true,
        melee_speed_multiplier = 1.5,
        melee_speed_min_interval = 0.02,
        attack_dash_input_context_seconds = 0.45,
        attack_dash_active_context_seconds = 0.70,
        attack_dash_post_end_context_seconds = 0.45,
        skill_fall_protection_enabled = true,
        skill_fall_protection_grace = 0.45,
        skill_fall_protection_air_grace = 1.0,
        skill_fall_protection_ground_grace = 0.45,
        skill_fall_protection_max_velocity = 0.0,
        skill_fall_guard_enabled = true,
        skill_fall_guard_ground_grace = 1.00,
        skill_fall_guard_max_session_seconds = 12.0,
        skill_fall_guard_prelanding_distance = 48.0,
        skill_fall_guard_physical_cushion_enabled = true,
        skill_fall_guard_cushion_trace_distance = 112.0,
        skill_fall_guard_cushion_max_down_speed = 180.0,
        skill_fall_guard_cushion_trigger_speed = 300.0,
        tank_knockback_enabled = true,
        tank_knockback_horizontal = 1050.0,
        tank_knockback_vertical = 220.0,
        tank_knockback_once_per_dash = true,
        tank_impact_duration = 0.18,
        tank_impact_verify_delay = 0.18,
        tank_knockback_verify_delay = 0.18,
        tank_impact_min_displacement = 24.0,
        tank_knockback_min_verified_displacement = 40.0,
        tank_stun_fallback_enabled = true,
        tank_player_separation_enabled = true,
        tank_player_min_separation = 64.0,
        tank_impact_ends_dash = true,
        combo_enabled = true,
        combo_timeout = 8.0,
        combo_multiplier_1 = 1.0,
        combo_multiplier_2 = 1.5,
        combo_multiplier_3 = 3.0,
        fast_switch_adrenaline_seconds = 2.0,
        center_text_enabled = true,
        overlay_enabled = true,
        overlay_time = 0.22,
        overlay_flash_interval = 0.40,
        load_message = true,
        load_message_text = "当前对局已启用XNP空中三段斩玩法模组，可能影响原版平衡。\nXNP Airborne Triple Slash is enabled for the current match and may affect vanilla balance.",
        special_hit_temp_health_enabled = true,
        special_hit_temp_health_amount = 40.0,
        tank_hit_temp_health_amount = 5.0,
        witch_hit_temp_health_amount = 40.0,
        special_hit_temp_health_per_target = true,
        special_hit_resets_cooldown = true,
        special_hit_reset_sources_melee = true,
        special_hit_reset_sources_attack_dash = true,
        tank_attack_contact_enabled = true,
        tank_attack_contact_distance = 96.0,
        tank_attack_contact_tolerance = 12.0,
        tank_attack_contact_requires_line_of_sight = true,
        tank_attack_contact_requires_forward_cone = true,
        tank_attack_contact_forward_dot = 0.20,
        tank_contact_center_fallback_distance = 132.0,
        tank_contact_recent_event_max_distance = 150.0,
        tank_contact_surface_gap = 24.0,
        tank_contact_vertical_tolerance = 104.0,
        tank_contact_requires_dash_travel = true,
        tank_contact_min_dash_travel = 24.0,
        tank_contact_post_end_window = 0.45,
        skill_hud_enabled = true,
        skill_hud_update_interval = 0.10,
        skill_hud_segments = 12,
        skill_hud_show_ready = true,
        skill_hud_special_hit_flash_seconds = 0.60,
        skill_hud_show_temp_health_gain = true,
        skill_hud_temp_health_flash_seconds = 0.60,
        skill_hud_x = 0.38,
        skill_hud_y = 0.82,
        skill_charge_hud_enabled = true,
        skill_charge_hud_full_symbol = "#",
        skill_charge_hud_empty_symbol = "-",
        skill_charge_hud_label = "DASH",
        skill_charge_hud_update_interval = 0.10,
        skill_charge_hud_full_hide_delay = 3.0,
        skill_charge_hud_show_when_melee = true,
        skill_charge_hud_show_when_incomplete = true,
        skill_charge_hud_show_next_seconds = true,
        skill_charge_hud_next_label = "NEXT",
        skill_charge_hud_seconds_suffix = "s",
        version_notice_enabled = true,
        version_notice_line1 = "[XNP Airborne Triple Slash 0.7.7] PUBLIC RELEASE",
        version_notice_line2 = "Ground Dash / Air Triple Slash / Active Tongue Escape",
        version_notice_show_seconds = 7.0,
        version_notice_show_on_spawn = true,
        version_notice_show_on_late_join = true,
        version_notice_once_per_map = true,
        tank_stun_enabled = true,
        tank_stun_duration = 1.50,
        tank_stun_movement_scale = 0.05,
        tank_stun_refresh_on_hit = true,
        tank_stagger_animation_enabled = true,
        tank_stagger_animation_min_interval = 0.60,
        tank_stagger_animation_once_per_token = true,
        tank_stagger_animation_runtime_unverified = true,
        tank_player_recoil_enabled = true,
        tank_player_recoil_horizontal = 850.0,
        tank_player_recoil_vertical = 220.0,
        tank_player_recoil_max_speed = 950.0,
        tank_player_recoil_verify_delay = 0.10,
        tank_player_recoil_min_displacement = 96.0,
        post_dash_overlap_escape_enabled = true,
        post_dash_overlap_escape_impulse = 260.0,
        post_dash_overlap_escape_vertical = 40.0,
        post_dash_overlap_escape_max_restore_distance = 64.0,
        dash_wall_slide_enabled = true,
        dash_wall_slide_tangent_scale = 0.65,
        dash_wall_slide_max_speed = 420.0,
        dash_wall_normal_z_threshold = 0.45,
        aerial_chain_enabled = true,
        aerial_chain_max_charges = 1,
        aerial_chain_window = 3.0,
        aerial_chain_reenable_slow_fall = true,
        aerial_chain_requires_special_kill = true,
        probe_eligibility_debug = false,
        common_aoe_push_enabled = true,
        common_aoe_push_radius = 160.0,
        normal_dash_common_aoe_horizontal = 360.0,
        normal_dash_common_aoe_vertical = 90.0,
        attack_dash_common_aoe_horizontal = 520.0,
        attack_dash_common_aoe_vertical = 140.0,
        common_aoe_push_once_per_nonce = true,
        common_aoe_push_max_targets_per_step = 24,
        dash_area_stun_enabled = true,
        dash_area_stun_radius = 180.0,
        dash_area_stun_scan_interval = 0.08,
        dash_area_stun_requires_line_of_sight = true,
        dash_area_stun_once_per_target_per_nonce = true,
        dash_area_stun_max_targets_per_scan = 32,
        dash_area_stun_common_duration = 0.65,
        dash_area_stun_special_duration = 1.10,
        dash_area_stun_tank_duration = 1.60,
        dash_area_stun_witch_duration = 1.10,
        dash_area_stun_common_movement_scale = 0.20,
        dash_area_stun_special_movement_scale = 0.05,
        dash_area_stun_tank_movement_scale = 0.05,
        dash_area_stun_witch_movement_scale = 0.10,
        tank_area_stun_enforcement_interval = 0.20,
        tank_area_stun_repeat_stagger = true,
        tank_area_stun_repeat_stagger_interval = 0.40,
        tank_area_stun_zero_horizontal_velocity = true,
        tank_area_stun_attack_lock_enabled = true,
        tank_area_stun_attack_lock_verify = true,
        tank_area_stun_require_visible_verification = true,
        tank_area_knockback_enabled = true,
        normal_dash_tank_knockback_horizontal = 650.0,
        normal_dash_tank_knockback_vertical = 120.0,
        attack_dash_tank_knockback_horizontal = 950.0,
        attack_dash_tank_knockback_vertical = 220.0,
        tank_area_knockback_verify_delay = 0.15,
        tank_area_knockback_normal_min_displacement = 28.0,
        tank_area_knockback_attack_min_displacement = 44.0,
        tank_area_knockback_retry_enabled = true,
        tank_area_knockback_retry_scale = 0.70,
        tank_knockback_stun_velocity_grace = 0.30,
        tank_stun_spark_trail_enabled = true,
        tank_stun_spark_trail_interval = 0.25,
        tank_stun_spark_trail_max_bursts = 6,
        tank_stun_spark_trail_sparks_per_burst = 2,
        dash_skill_fx_enabled = true,
        normal_dash_skill_fx_scale = 0.75,
        attack_dash_skill_fx_scale = 1.00,
        tank_dash_skill_fx_scale = 1.30,
        witch_dash_skill_fx_scale = 1.00,
        dash_skill_fx_use_sparks = true,
        dash_skill_fx_use_light_flash = true,
        dash_skill_fx_use_sound = true,
        dash_skill_fx_use_particle_secondary = true,
        dash_skill_fx_damage = false,
        dash_skill_fx_ignite = false,
        normal_dash_fx_spark_count = 5,
        attack_dash_fx_spark_count = 8,
        tank_fx_spark_count = 10,
        witch_fx_spark_count = 8,
        tank_melee_strong_stun_enabled = false,
        tank_melee_minor_stagger_enabled = true,
        tank_melee_minor_stagger_cooldown = 0.60,
        special_melee_impact_enabled = true,
        special_melee_knockback_horizontal = 260.0,
        special_melee_knockback_vertical = 90.0,
        special_dash_impact_enabled = true,
        special_dash_knockback_horizontal = 520.0,
        special_dash_knockback_vertical = 180.0,
        special_dash_impact_stagger_enabled = true,
        special_hit_dissolve_on_kill_enabled = false,
        special_hit_dissolve_live_targets = false,
        special_hit_dissolve_tank = false,
        special_hit_dissolve_witch = false,
        tank_death_dissolve_fx_enabled = false,
        tank_live_dissolve_enabled = false,
        special_death_dissolve_fx_enabled = false,
        smoker_breakout_enabled = true,
        smoker_breakout_kill_smoker = true,
        smoker_breakout_protection_seconds = 1.50,
        smoker_breakout_release_verify_seconds = 0.75,
        smoker_breakout_push_radius = 260.0,
        smoker_breakout_aftershock_duration = 1.25,
        smoker_breakout_aftershock_interval = 0.25,
        smoker_breakout_target_repeat_cooldown = 0.45,
        smoker_breakout_common_horizontal = 560.0,
        smoker_breakout_common_vertical = 130.0,
        smoker_breakout_special_horizontal = 460.0,
        smoker_breakout_special_vertical = 110.0,
        smoker_breakout_witch_horizontal = 360.0,
        smoker_breakout_witch_vertical = 90.0,
        smoker_breakout_include_tank = true,
        debug_state = false,
        debug_damage = false,
        debug_probe = false,
    },

    Settings = null,

    function Log(text)
    {
        printl("[XNP GR] " + text);
    },

    function Probe(text)
    {
        if (this.Settings != null && "debug_probe" in this.Settings && this.Settings.debug_probe)
        {
            printl("[XNP GR PROBE] " + text);
        }
    },

    function GetCurrentTime()
    {
        try { return Time(); } catch (error) {}
        return 0.0;
    },

    function CopyDefaultSettings()
    {
        local data = {};
        foreach (key, value in this.Defaults)
        {
            data[key] <- value;
        }
        return data;
    },

    function ApplyConfigValue(key, value)
    {
        if (!(key in this.Settings))
        {
            this.Log("config unknown_key=" + key);
            return;
        }
        local defaultType = typeof this.Settings[key];
        local valueType = typeof value;
        local numericDefault = defaultType == "integer" || defaultType == "float";
        local numericValue = valueType == "integer" || valueType == "float";
        if (defaultType != valueType && !(numericDefault && numericValue))
        {
            this.Log("config type_mismatch key=" + key + " expected=" + defaultType + " actual=" + valueType + " using_default=true");
            return;
        }
        this.Settings[key] = value;
    },

    function LoadSettings()
    {
        this.Settings = this.CopyDefaultSettings();
        local raw = null;
        try { raw = FileToString(this.ConfigFile); } catch (error) { raw = null; }
        if (raw == null || raw == "")
        {
            this.Log("config using built-in defaults");
            return;
        }
        local data = null;
        try { data = compilestring("return " + raw)(); } catch (error2)
        {
            this.Log("config parse failed fallback_to_defaults error=" + error2);
            return;
        }
        if (data == null || typeof data != "table")
        {
            this.Log("config parse failed fallback_to_defaults reason=not_table");
            return;
        }
        foreach (key, value in data)
        {
            this.ApplyConfigValue(key, value);
        }
        this.Log("config loaded ems/" + this.ConfigFile);
    },

    function IsUsableEntity(entity)
    {
        if (entity == null) { return false; }
        try
        {
            if ("IsValid" in entity && !entity.IsValid()) { return false; }
        }
        catch (error) {}
        return true;
    },

    function GetEntityIndexSafe(entity)
    {
        if (!this.IsUsableEntity(entity)) { return -1; }
        try { return entity.GetEntityIndex(); } catch (error) {}
        try { return entity.entindex(); } catch (error2) {}
        return -1;
    },

    function GetClassname(entity)
    {
        if (!this.IsUsableEntity(entity)) { return ""; }
        try { return entity.GetClassname(); } catch (error) {}
        return "";
    },

    function ReadIntProp(entity, propName, fallback)
    {
        if (!this.IsUsableEntity(entity)) { return fallback; }
        try { return NetProps.GetPropInt(entity, propName); } catch (error) {}
        return fallback;
    },

    function ReadFloatProp(entity, propName, fallback)
    {
        if (!this.IsUsableEntity(entity)) { return fallback; }
        try { return NetProps.GetPropFloat(entity, propName); } catch (error) {}
        return fallback;
    },

    function SetFloatProp(entity, propName, value)
    {
        if (!this.IsUsableEntity(entity)) { return false; }
        try
        {
            NetProps.SetPropFloat(entity, propName, value);
            return true;
        }
        catch (error) {}
        return false;
    },

    function HasPropSafe(entity, propName)
    {
        if (!this.IsUsableEntity(entity)) { return false; }
        try { return NetProps.HasProp(entity, propName); }
        catch (error) {}
        return false;
    },

    function GetHealthSafe(entity)
    {
        if (!this.IsUsableEntity(entity)) { return 0; }
        try { return entity.GetHealth(); } catch (error) {}
        return this.ReadIntProp(entity, "m_iHealth", 0);
    },

    function GetOriginSafe(entity)
    {
        if (!this.IsUsableEntity(entity)) { return null; }
        try { return entity.GetOrigin(); } catch (error) {}
        return null;
    },

    function GetEntityFromIndex(index)
    {
        if (index == null) { return null; }
        try { return EntIndexToHScript(index.tointeger()); } catch (error) {}
        return null;
    },

    function IsPlayerDead(player)
    {
        if (!this.IsUsableEntity(player)) { return true; }
        try { if (player.IsDead()) { return true; } } catch (error) {}
        return this.GetHealthSafe(player) <= 0;
    },

    function IsSurvivorPlayer(player)
    {
        return this.IsUsableEntity(player) && this.GetClassname(player) == "player" && this.ReadIntProp(player, "m_iTeamNum", 0) == 2;
    },

    function IsHumanPlayer(player)
    {
        if (!this.IsSurvivorPlayer(player)) { return false; }
        try { if (player.IsFakeClient()) { return false; } } catch (error) {}
        return true;
    },

    function IsEligibleSurvivor(player)
    {
        return this.IsSurvivorPlayer(player) && !this.IsPlayerDead(player) && this.ReadIntProp(player, "m_isIncapacitated", 0) == 0;
    },

    function IsOnGround(player)
    {
        local flags = this.ReadIntProp(player, "m_fFlags", 0);
        return (flags & 1) != 0;
    },

    function MeasureGroundClearance(player)
    {
        local origin = this.GetOriginSafe(player);
        if (origin == null) { return 0.0; }
        local distance = 128.0;
        local trace =
        {
            start = origin + Vector(0.0, 0.0, 8.0),
            end = origin - Vector(0.0, 0.0, distance),
            ignore = player,
        };
        try
        {
            TraceLine(trace);
        }
        catch (error)
        {
            if (!this.TraceTableFailureLogged)
            {
                this.TraceTableFailureLogged = true;
                this.Log("BLOCKER trace_table_call_failed error=" + error);
            }
            return 0.0;
        }
        if ("startsolid" in trace && trace.startsolid) { return 0.0; }
        if (!("hit" in trace) || !trace.hit) { return distance; }
        if ("fraction" in trace) { return trace.fraction * distance; }
        return 0.0;
    },

    function IsOnLadder(player)
    {
        local moveType = this.ReadIntProp(player, "movetype", 0);
        return moveType == 9;
    },

    function GetActiveWeapon(player)
    {
        if (!this.IsUsableEntity(player)) { return null; }
        local weapon = null;
        try { weapon = player.GetActiveWeapon(); } catch (error) { weapon = null; }
        if (this.IsUsableEntity(weapon)) { return weapon; }
        try { weapon = NetProps.GetPropEntity(player, "m_hActiveWeapon"); } catch (error2) { weapon = null; }
        if (this.IsUsableEntity(weapon)) { return weapon; }
        return null;
    },

    function IsMeleeWeapon(weapon)
    {
        return this.GetClassname(weapon) == "weapon_melee";
    },

    function IsMeleeDamageEvent(attacker, params)
    {
        if (!this.IsEligibleSurvivor(attacker)) { return false; }
        local weapon = this.GetActiveWeapon(attacker);
        if (!this.IsMeleeWeapon(weapon)) { return false; }
        if (params != null && typeof params == "table" && "weapon" in params)
        {
            local w = params.weapon.tostring();
            if (w != "" && w.find("melee") == null && w != "weapon_melee") { return false; }
        }
        return true;
    },

    function GetDamageAmountFromParams(params)
    {
        if (params == null || typeof params != "table") { return 0.0; }
        if ("dmg_health" in params) { return params.dmg_health.tofloat(); }
        if ("damage" in params) { return params.damage.tofloat(); }
        if ("amount" in params) { return params.amount.tofloat(); }
        return 0.0;
    },

    function GetEyePosition(player)
    {
        try { return player.EyePosition(); } catch (error) {}
        local origin = this.GetOriginSafe(player);
        if (origin == null) { return null; }
        return origin + Vector(0.0, 0.0, 64.0);
    },

    function GetViewForward(player)
    {
        try { return player.EyeAngles().Forward(); } catch (error) {}
        return null;
    },

    function VectorLength(vec)
    {
        if (vec == null) { return 0.0; }
        return sqrt((vec.x * vec.x) + (vec.y * vec.y) + (vec.z * vec.z));
    },

    function NormalizeVector(vec)
    {
        local len = this.VectorLength(vec);
        if (len < 0.01) { return null; }
        return Vector(vec.x / len, vec.y / len, vec.z / len);
    },

    function DotProduct(a, b)
    {
        if (a == null || b == null) { return 0.0; }
        return (a.x * b.x) + (a.y * b.y) + (a.z * b.z);
    },

    function DistancePointToSegment(point, a, b)
    {
        local ab = b - a;
        local ap = point - a;
        local abLenSq = this.DotProduct(ab, ab);
        if (abLenSq <= 0.01) { return this.VectorLength(point - a); }
        local t = this.DotProduct(ap, ab) / abLenSq;
        if (t < 0.0) { t = 0.0; }
        if (t > 1.0) { t = 1.0; }
        local closest = Vector(a.x + (ab.x * t), a.y + (ab.y * t), a.z + (ab.z * t));
        return this.VectorLength(point - closest);
    },

    function ClampDashDirection(dir)
    {
        if (dir == null) { return null; }
        local z = dir.z;
        if (z > this.Settings.dash_vertical_component_limit) { z = this.Settings.dash_vertical_component_limit; }
        if (z < (0.0 - this.Settings.dash_vertical_component_limit)) { z = 0.0 - this.Settings.dash_vertical_component_limit; }
        return this.NormalizeVector(Vector(dir.x, dir.y, z));
    },

    function ReadButtons(player)
    {
        try { return NetProps.GetPropInt(player, "m_nButtons"); } catch (error) {}
        this.Log("BLOCKER button_read_failed prop=m_nButtons");
        return 0;
    },

    function GetTargetCenter(entity)
    {
        local origin = this.GetOriginSafe(entity);
        if (origin == null) { return null; }
        if (this.GetClassname(entity) == "infected") { return origin + Vector(0.0, 0.0, 38.0); }
        return origin + Vector(0.0, 0.0, 45.0);
    },

    function IsCommonTarget(entity)
    {
        return this.GetClassname(entity) == "infected" && this.GetHealthSafe(entity) > 0;
    },

    function GetSpecialType(entity)
    {
        if (this.GetClassname(entity) != "player" || this.ReadIntProp(entity, "m_iTeamNum", 0) != 3) { return ""; }
        local zc = this.ReadIntProp(entity, "m_zombieClass", -1);
        if (zc == 1) { return "smoker"; }
        if (zc == 2) { return "boomer"; }
        if (zc == 3) { return "hunter"; }
        if (zc == 4) { return "spitter"; }
        if (zc == 5) { return "jockey"; }
        if (zc == 6) { return "charger"; }
        if (zc == 8) { return "tank"; }
        return "";
    },

    function IsSmokerPlayer(entity)
    {
        return this.IsUsableEntity(entity) && this.GetSpecialType(entity) == "smoker" && this.GetHealthSafe(entity) > 0;
    },

    function GetSpecialInfectedType(entity)
    {
        if (this.GetClassname(entity) == "witch") { return "witch"; }
        return this.GetSpecialType(entity);
    },

    function IsQualifiedSpecialInfected(entity)
    {
        if (!this.IsUsableEntity(entity)) { return false; }
        local t = this.GetSpecialInfectedType(entity);
        return t == "smoker" || t == "boomer" || t == "hunter" || t == "spitter" || t == "jockey" || t == "charger" || t == "tank" || t == "witch";
    },

    function IsWitchTarget(entity)
    {
        return this.GetClassname(entity) == "witch" && this.GetHealthSafe(entity) > 0;
    },

    function GetTargetType(entity)
    {
        if (this.IsCommonTarget(entity)) { return "common"; }
        if (this.IsWitchTarget(entity)) { return "witch"; }
        return this.GetSpecialType(entity);
    },

    function GetDashAreaTargetType(entity)
    {
        if (!this.IsUsableEntity(entity) || this.GetHealthSafe(entity) <= 0) { return "invalid"; }
        if (this.IsCommonTarget(entity)) { return "common"; }
        if (this.IsWitchTarget(entity)) { return "witch"; }
        local t = this.GetSpecialType(entity);
        if (t == "smoker" || t == "boomer" || t == "hunter" || t == "spitter" || t == "jockey" || t == "charger" || t == "tank") { return t; }
        return "invalid";
    },

    function IsSpecialPlayerTarget(entity)
    {
        local t = this.GetDashAreaTargetType(entity);
        return t == "smoker" || t == "boomer" || t == "hunter" || t == "spitter" || t == "jockey" || t == "charger";
    },

    function IsTankTarget(entity)
    {
        return this.GetDashAreaTargetType(entity) == "tank";
    },

    function IsQualifiedSkillFxTarget(entity)
    {
        local t = this.GetDashAreaTargetType(entity);
        return t == "smoker" || t == "boomer" || t == "hunter" || t == "spitter" || t == "jockey" || t == "charger" || t == "tank" || t == "witch";
    },

    function IsAllowedDamageTarget(entity)
    {
        if (!this.IsUsableEntity(entity) || this.GetHealthSafe(entity) <= 0) { return false; }
        local t = this.GetTargetType(entity);
        return t == "common" || t == "smoker" || t == "boomer" || t == "hunter" || t == "spitter" || t == "jockey" || t == "charger" || t == "witch" || t == "tank";
    },

    function IsSpecialHealTargetType(t)
    {
        return t == "smoker" || t == "boomer" || t == "hunter" || t == "spitter" || t == "jockey" || t == "charger" || t == "witch" || t == "tank";
    },

    function GRTraceVisible(startPos, endPos, ignoreEntity)
    {
        local trace =
        {
            start = startPos,
            end = endPos,
            ignore = ignoreEntity,
        };
        try
        {
            TraceLine(trace);
        }
        catch (error)
        {
            if (!this.TraceTableFailureLogged)
            {
                this.TraceTableFailureLogged = true;
                this.Log("BLOCKER trace_table_call_failed error=" + error);
            }
            return false;
        }
        if ("startsolid" in trace && trace.startsolid) { return false; }
        if (!("hit" in trace)) { return true; }
        if (!trace.hit) { return true; }
        if ("fraction" in trace && trace.fraction >= 0.97) { return true; }
        if ("enthit" in trace)
        {
            local hitIndex = this.GetEntityIndexSafe(trace.enthit);
            local ignoreIndex = this.GetEntityIndexSafe(ignoreEntity);
            if (hitIndex >= 0 && hitIndex == ignoreIndex) { return true; }
        }
        return false;
    },

    function GRTraceBlockedByStaticWorld(startPos, endPos, ignoreEntity, targetEntity)
    {
        local trace =
        {
            start = startPos,
            end = endPos,
            ignore = ignoreEntity,
        };
        try
        {
            TraceLine(trace);
        }
        catch (error)
        {
            if (!this.TraceTableFailureLogged)
            {
                this.TraceTableFailureLogged = true;
                this.Log("BLOCKER trace_table_call_failed error=" + error);
            }
            return true;
        }
        if ("startsolid" in trace && trace.startsolid) { return true; }
        if (!("hit" in trace) || !trace.hit) { return false; }
        if ("fraction" in trace && trace.fraction >= 0.97) { return false; }
        if ("enthit" in trace)
        {
            local hitEntity = trace.enthit;
            local hitIndex = this.GetEntityIndexSafe(hitEntity);
            local targetIndex = this.GetEntityIndexSafe(targetEntity);
            local ignoreIndex = this.GetEntityIndexSafe(ignoreEntity);
            if (hitIndex >= 0 && (hitIndex == targetIndex || hitIndex == ignoreIndex)) { return false; }
            local hitType = this.GetDashAreaTargetType(hitEntity);
            if (hitType != "invalid") { return false; }
        }
        return true;
    },

    function GRTraceBlockedByWorld(startPos, endPos, ignoreEntity, state)
    {
        local trace =
        {
            start = startPos,
            end = endPos,
            ignore = ignoreEntity,
        };
        try
        {
            TraceLine(trace);
        }
        catch (error)
        {
            if (!this.TraceTableFailureLogged)
            {
                this.TraceTableFailureLogged = true;
                this.Log("BLOCKER trace_table_call_failed error=" + error);
            }
            return true;
        }
        if ("startsolid" in trace && trace.startsolid) { return true; }
        if (!("hit" in trace) || !trace.hit) { return false; }
        if ("fraction" in trace && trace.fraction >= 0.97) { return false; }
        if (state != null && "fraction" in trace) { state.last_world_trace_fraction = trace.fraction; }
        if (state != null)
        {
            if ("plane_normal" in trace) { state.last_world_trace_normal = trace.plane_normal; }
            else if ("normal" in trace) { state.last_world_trace_normal = trace.normal; }
            else { state.last_world_trace_normal = null; }
        }
        if ("enthit" in trace)
        {
            local hitEntity = trace.enthit;
            local hitIndex = this.GetEntityIndexSafe(hitEntity);
            local ignoreIndex = this.GetEntityIndexSafe(ignoreEntity);
            if (hitIndex >= 0 && hitIndex == ignoreIndex) { return false; }
            if (this.IsAllowedDamageTarget(hitEntity))
            {
                this.RecordDashPassthrough(state, hitEntity);
                return false;
            }
        }
        return true;
    },

    function RecordDashPassthrough(state, entity)
    {
        if (state == null || state.action_nonce <= 0) { return; }
        local targetType = this.GetTargetType(entity);
        if (targetType == "tank" || targetType == "witch") { return; }
        state.dash_common_passthrough_count += 1;
        if (state.dash_common_passthrough_logged_nonce == state.action_nonce) { return; }
        state.dash_common_passthrough_logged_nonce = state.action_nonce;
        this.Log("dash_common_passthrough nonce=" + state.action_nonce.tostring() + " target=" + this.GetEntityIndexSafe(entity).tostring() + " type=" + targetType);
    },

    function TryInfectedPhysicsPassthrough(player, state, origin, next)
    {
        if (!this.Settings.dash_infected_passthrough_enabled || state == null || state.action_nonce <= 0) { return; }
        if (state.dash_common_passthrough_count <= 0) { return; }
        if (origin == null || next == null) { return; }
        if (this.GRTraceBlockedByWorld(origin + Vector(0, 0, 32), next + Vector(0, 0, 32), player, null)) { return; }
        local before = this.GetOriginSafe(player);
        if (before == null) { return; }
        try { player.SetOrigin(next); } catch (error) { return; }
        local after = this.GetOriginSafe(player);
        if (after == null) { return; }
        local corrected = this.VectorLength(after - before);
        if (state.dash_passthrough_correction_logged_nonce != state.action_nonce)
        {
            state.dash_passthrough_correction_logged_nonce = state.action_nonce;
            this.Log("infected_physics_passthrough nonce=" + state.action_nonce.tostring() + " corrected_distance=" + corrected.tostring());
        }
    },

    function GetPlayerState(player)
    {
        local index = this.GetEntityIndexSafe(player);
        if (index < 0 || !this.IsSurvivorPlayer(player)) { return null; }
        if (!(index in this.PlayerState))
        {
            this.PlayerState[index] <- {
                state_name = this.STATE_GROUND_IDLE,
                state_start_time = 0.0,
                was_on_ground = true,
                is_on_ground = true,
                is_authoritatively_grounded = true,
                airborne_candidate_since = 0.0,
                airborne_confirmed_at = 0.0,
                airborne_consecutive_ticks = 0,
                last_confirmed_ground_time = 0.0,
                last_confirmed_ground_origin = null,
                last_ground_trace_distance = 0.0,
                ground_press_blocked_until_release = false,
                ground_press_rejected_logged = false,
                pending_jump_skill_press = false,
                pending_jump_skill_press_at = 0.0,
                pending_jump_skill_press_serial = 0,
                pending_jump_skill_origin_z = 0.0,
                pending_jump_skill_upward_velocity = 0.0,
                skill_key_press_serial = 0,
                skill_key_press_time = 0.0,
                skill_key_press_was_airborne = false,
                air_session_id = 0,
                air_session_attack_count = 0,
                held_air_activation_consumed = false,
                held_air_activation_session_id = 0,
                held_air_activation_entered_at = 0.0,
                ground_activation_consumed = false,
                ground_activation_press_serial = 0,
                dash_started_from_ground = false,
                air_action_spent = false,
                air_session_nonce = 0,
                previous_buttons = 0,
                current_buttons = 0,
                skill_key_down = false,
                skill_key_was_down = false,
                attack_key_down = false,
                attack_key_was_down = false,
                hold_loop_active = false,
                hold_cycle_id = 0,
                hold_charge_started_at = 0.0,
                hold_auto_dash_at = 0.0,
                hold_rearm_at = 0.0,
                dash_mode = "",
                dash_started_for_current_cycle = false,
                attack_input_consumed = false,
                dash_cost_applied = false,
                dash_aborted = false,
                skill_cooldown_until = 0.0,
                skill_cooldown_active = false,
                skill_cooldown_ready_logged = false,
                skill_cooldown_block_logged = false,
                cooldown_requires_skill_release = false,
                skill_key_released_after_cooldown = true,
                skill_cooldown_started_at = 0.0,
                skill_cooldown_duration_snapshot = 0.0,
                skill_hud_next_update_time = 0.0,
                skill_hud_last_text = "",
                skill_hud_flash_until = 0.0,
                skill_hud_temp_gain = 0,
                skill_hud_hidden = false,
                skill_charges = 0,
                skill_charge_next_at = 0.0,
                skill_charge_last_change_at = 0.0,
                skill_charge_full_at = 0.0,
                skill_charge_hud_visible_until = 0.0,
                skill_charge_hud_last_text = "",
                skill_charge_hud_next_update_time = 0.0,
                skill_charge_hud_hidden = false,
                skill_charge_hud_last_seconds = -1,
                skill_charge_hud_last_visible = false,
                skill_charge_initialized = false,
                skill_charge_block_empty_logged = false,
                skill_charge_last_weapon_is_melee = false,
                skill_charge_timer_repair_logged = false,
                charge_reward_dedupe = {},
                version_notice_shown = false,
                version_notice_until = 0.0,
                smoker_breakout_protection_until = 0.0,
                smoker_breakout_protection_logged_end = true,
                smoker_breakout_grab_dedupe = {},
                smoker_breakout_aftershock_active = false,
                smoker_breakout_aftershock_until = 0.0,
                smoker_breakout_aftershock_next_at = 0.0,
                smoker_breakout_aftershock_targets = {},
                smoker_breakout_aftershock_nonce = 0,
                tongue_escape_armed = false,
                tongue_escape_token = 0,
                tongue_escape_victim_userid = 0,
                tongue_escape_smoker_userid = 0,
                tongue_escape_smoker_entindex = -1,
                tongue_escape_grabbed_at = 0.0,
                tongue_escape_consumed = false,
                tongue_escape_last_skill_press_at = 0.0,
                tongue_escape_waiting_for_fresh_press = false,
                tongue_escape_duplicate_logged = false,
                tongue_escape_reject_reasons = {},
                suppress_skill_until_release_after_tongue_escape = false,
                action_nonce = 0,
                action_self_damage_nonce = 0,
                action_heal_nonce = 0,
                action_hit_count = 0,
                action_special_count = 0,
                current_slash_index = 0,
                slash_qualified_this_dash = false,
                slash_qualified_target = -1,
                slash_qualified_type = "",
                skill_key_released_during_dash = false,
                target_hit_entindices = {},
                dash_previous_origin = null,
                dash_current_origin = null,
                dash_direction = null,
                dash_start_origin = null,
                dash_travelled_distance = 0.0,
                last_safe_dash_origin = null,
                last_safe_dash_time = 0.0,
                dash_start_time = 0.0,
                dash_trigger_source = "",
                dash_finish_done = false,
                dash_finish_requested = false,
                dash_finish_reason = "",
                post_dash_brake_nonce = 0,
                tank_overlap_checked_nonce = 0,
                tank_overlap_resolved_nonce = 0,
                tank_overlap_failed_nonce = 0,
                tank_stun_target = null,
                tank_stun_target_entindex = -1,
                tank_stun_until = 0.0,
                tank_stun_original_speed = 1.0,
                tank_stun_restore_logged = false,
                tank_recoil_nonce = 0,
                pending_tank_target = null,
                pending_tank_entindex = -1,
                pending_tank_nonce = 0,
                pending_tank_detected_at = 0.0,
                pending_tank_initial_distance = 0.0,
                pending_tank_contact_nonce = 0,
                pending_tank_candidate_log_nonce = 0,
                pending_tank_not_reached_nonce = 0,
                pending_tank_damage_context_nonce = 0,
                pending_tank_native_melee_hint = false,
                pending_tank_native_melee_entindex = -1,
                pending_tank_contact_method = "",
                pending_tank_contact_surface_gap = 99999.0,
                pending_tank_step_start = null,
                pending_tank_step_end = null,
                tank_melee_minor_stagger_until = 0.0,
                overlay_entity = null,
                overlay_targetname = "",
                next_text_time = 0.0,
                fast_last_primary = 0.0,
                fast_last_player = 0.0,
                fast_last_secondary = 0.0,
                fast_melee_apply_serial = 0,
                fast_melee_pending_serial = 0,
                fast_melee_applied_serial = 0,
                fast_melee_pending_until = 0.0,
                tank_knockback_nonce = 0,
                tank_knockback_failed_reasons = {},
                tank_impact_target = null,
                tank_impact_target_entindex = -1,
                tank_impact_nonce = 0,
                tank_impact_until = 0.0,
                tank_impact_direction = null,
                tank_impact_origin = null,
                tank_impact_verify_time = 0.0,
                tank_impact_verified = false,
                tank_impact_verify_retry_done = false,
                tank_impact_stun_attempted = false,
                tank_impact_failure_logged = false,
                tank_stun_token = 0,
                tank_stun_verify_time = 0.0,
                tank_stun_verified = false,
                tank_area_knockback_targets = {},
                tank_area_knockback_verify = {},
                tank_knockback_velocity_grace_until = 0.0,
                tank_knockback_grace_nonce = 0,
                fall_protection_active = false,
                fall_protection_until = 0.0,
                fall_protection_air_until = 0.0,
                fall_protection_ground_contact_time = 0.0,
                fall_protection_ground_until = 0.0,
                fall_protection_pending_finish = false,
                fall_protection_source = "",
                fall_protection_session = 0,
                fall_protection_armed_logged = false,
                fall_protection_consumed_logged = false,
                fall_protection_block_logged = false,
                fall_protection_failure_logged = false,
                fall_velocity_clamp_count = 0,
                fall_guard_active = false,
                fall_guard_session = 0,
                fall_guard_until = 0.0,
                fall_guard_ground_until = 0.0,
                fall_guard_landed = false,
                fall_guard_prelanding_reset_done = false,
                fall_guard_cushion_used = false,
                fall_guard_hook_seen = false,
                fall_guard_last_damage_type = -1,
                fall_guard_last_damage_amount = 0.0,
                fall_guard_health_before = 0,
                fall_guard_health_after = 0,
                slow_fall_active = false,
                fall_damage_guard_active = false,
                attack_dash_input_context_active = false,
                attack_dash_input_context_nonce = 0,
                attack_dash_input_context_started_at = 0.0,
                attack_dash_input_context_expires_at = 0.0,
                attack_dash_input_context_attack_serial = 0,
                attack_dash_context_attacker_entindex = -1,
                attack_dash_context_dash_started_at = 0.0,
                attack_dash_context_dash_ended_at = 0.0,
                attack_dash_context_recent_until = 0.0,
                attack_dash_context_dash_start_origin = null,
                attack_dash_context_dash_last_origin = null,
                attack_dash_context_dash_direction = null,
                attack_dash_context_dash_travelled = 0.0,
                attack_dash_context_pending_tank = null,
                attack_dash_context_pending_tank_entindex = -1,
                attack_dash_context_resolved_targets = {},
                attack_dash_input_context_logged_targets = {},
                tank_player_recoil_verify_nonce = 0,
                tank_player_recoil_verify_time = 0.0,
                tank_player_recoil_verify_origin = null,
                tank_player_recoil_direction = null,
                tank_player_recoil_verify_target_entindex = -1,
                tank_player_recoil_verify_logged = false,
                tank_player_recoil_retry_done = false,
                aerial_chain_available = false,
                aerial_chain_charges = 0,
                aerial_chain_token = 0,
                aerial_chain_expires_at = 0.0,
                aerial_chain_source_victim = -1,
                aerial_chain_granted_logged = false,
                aerial_chain_dash_free = false,
                combo_stage = 0,
                combo_last_success_time = 0.0,
                combo_resume_at = 0.0,
                combo_expires_at = 0.0,
                current_dash_multiplier = 1.0,
                current_dash_combo_stage = 0,
                combo_dash_nonce = 0,
                melee_attack_serial = 0,
                melee_attack_started_at = 0.0,
                melee_special_hit_keys = {},
                dash_common_passthrough_count = 0,
                dash_common_passthrough_logged_nonce = 0,
                dash_passthrough_correction_logged_nonce = 0,
                common_aoe_pushed_targets = {},
                common_aoe_push_logged_nonce = 0,
                last_area_stun_scan_time = 0.0,
                area_stun_hit_targets = {},
                area_stun_target_count = 0,
                area_stun_special_count = 0,
                area_stun_common_count = 0,
                area_stun_logged_nonce = 0,
                last_world_trace_fraction = 1.0,
                last_world_trace_normal = null,
                last_weapon_category = "",
                last_weapon_entindex = -1,
                last_reset_reason = "",
                last_eligibility_reason = "",
                last_eligibility_log_time = 0.0,
                air_session_active = false,
                landed_event_consumed = true,
            };
            this.InitializeSkillCharges(this.PlayerState[index], true);
            this.Probe("player_state_created ent=" + index.tostring());
        }
        return this.PlayerState[index];
    },

    function SetState(player, state, nextState, reason)
    {
        if (state == null || state.state_name == nextState) { return; }
        local oldState = state.state_name;
        state.state_name = nextState;
        state.state_start_time = this.GetCurrentTime();
        this.Log("state_change from=" + oldState + " to=" + nextState + " reason=" + reason);
    },

    function ResetSkillCooldownState(state)
    {
        if (state == null) { return; }
        state.skill_cooldown_until = 0.0;
        state.skill_cooldown_active = false;
        state.skill_cooldown_ready_logged = false;
        state.skill_cooldown_block_logged = false;
        state.skill_cooldown_started_at = 0.0;
        state.skill_cooldown_duration_snapshot = 0.0;
        state.cooldown_requires_skill_release = false;
        state.skill_key_released_after_cooldown = true;
    },

    function GetSkillChargeMax()
    {
        local maxCharges = this.Settings.skill_charge_max.tointeger();
        if (maxCharges < 1) { maxCharges = 3; }
        return maxCharges;
    },

    function InitializeSkillCharges(state, force)
    {
        if (state == null || !this.Settings.skill_charge_system_enabled) { return; }
        if (state.skill_charge_initialized && !force) { return; }
        local maxCharges = this.GetSkillChargeMax();
        local initial = this.Settings.skill_charge_initial.tointeger();
        if (initial < 0) { initial = 0; }
        if (initial > maxCharges) { initial = maxCharges; }
        local now = this.GetCurrentTime();
        state.skill_charges = initial;
        state.skill_charge_next_at = 0.0;
        if (state.skill_charges < maxCharges)
        {
            state.skill_charge_next_at = now + this.Settings.skill_charge_recharge_seconds;
        }
        state.skill_charge_last_change_at = now;
        state.skill_charge_full_at = now;
        state.skill_charge_hud_visible_until = now + this.Settings.skill_charge_hud_full_hide_delay;
        state.skill_charge_hud_last_text = "";
        state.skill_charge_hud_next_update_time = 0.0;
        state.skill_charge_hud_hidden = false;
        state.skill_charge_hud_last_seconds = -1;
        state.skill_charge_hud_last_visible = false;
        state.skill_charge_timer_repair_logged = false;
        state.skill_charge_initialized = true;
        state.skill_charge_block_empty_logged = false;
        state.charge_reward_dedupe = {};
    },

    function CleanupChargeRewardDedupe(state, now)
    {
        if (state == null) { return; }
        local expired = [];
        foreach (key, untilTime in state.charge_reward_dedupe)
        {
            if (now >= untilTime) { expired.append(key); }
        }
        foreach (key in expired)
        {
            if (key in state.charge_reward_dedupe) { delete state.charge_reward_dedupe[key]; }
        }
    },

    function StartSkillChargeRechargeIfNeeded(state, now)
    {
        if (state == null || !this.Settings.skill_charge_system_enabled) { return; }
        local maxCharges = this.GetSkillChargeMax();
        if (state.skill_charges >= maxCharges)
        {
            state.skill_charge_next_at = 0.0;
            return;
        }
        if (state.skill_charge_next_at <= 0.0)
        {
            state.skill_charge_next_at = now + this.Settings.skill_charge_recharge_seconds;
        }
    },

    function TryConsumeSkillCharge(player, state, dashMode)
    {
        if (state == null) { return false; }
        if (!this.Settings.skill_charge_system_enabled) { return true; }
        this.InitializeSkillCharges(state, false);
        local cost = this.Settings.skill_charge_cost_per_dash.tointeger();
        if (cost < 1) { cost = 1; }
        local before = state.skill_charges;
        if (before < cost)
        {
            if (!state.skill_charge_block_empty_logged)
            {
                state.skill_charge_block_empty_logged = true;
                printl("[XNP GR CHARGE] blocked_empty ent=" + this.GetEntityIndexSafe(player).tostring() + " mode=" + dashMode);
            }
            return false;
        }
        local now = this.GetCurrentTime();
        state.skill_charges = before - cost;
        if (state.skill_charges < 0) { state.skill_charges = 0; }
        state.skill_charge_last_change_at = now;
        state.skill_charge_block_empty_logged = false;
        state.skill_charge_timer_repair_logged = false;
        this.StartSkillChargeRechargeIfNeeded(state, now);
        state.skill_charge_hud_visible_until = now + this.Settings.skill_charge_hud_full_hide_delay;
        state.skill_charge_hud_next_update_time = 0.0;
        printl("[XNP GR CHARGE] consumed ent=" + this.GetEntityIndexSafe(player).tostring() + " mode=" + dashMode + " before=" + before.tostring() + " after=" + state.skill_charges.tostring() + " next_at=" + state.skill_charge_next_at.tostring());
        return true;
    },

    function HasSkillChargeAvailable(player, state, dashMode)
    {
        if (state == null) { return false; }
        if (!this.Settings.skill_charge_system_enabled) { return true; }
        this.InitializeSkillCharges(state, false);
        local cost = this.Settings.skill_charge_cost_per_dash.tointeger();
        if (cost < 1) { cost = 1; }
        if (state.skill_charges >= cost) { return true; }
        if (!state.skill_charge_block_empty_logged)
        {
            state.skill_charge_block_empty_logged = true;
            printl("[XNP GR CHARGE] blocked_empty ent=" + this.GetEntityIndexSafe(player).tostring() + " mode=" + dashMode);
        }
        return false;
    },

    function GetSkillChargeCost()
    {
        local cost = this.Settings.skill_charge_cost_per_dash.tointeger();
        if (cost < 1) { cost = 1; }
        return cost;
    },

    function HasSkillChargeQuiet(state)
    {
        if (state == null) { return false; }
        if (!this.Settings.skill_charge_system_enabled) { return true; }
        this.InitializeSkillCharges(state, false);
        return state.skill_charges >= this.GetSkillChargeCost();
    },

    function UpdateSkillChargeRecharge(player, state, now)
    {
        if (state == null || !this.Settings.skill_charge_system_enabled) { return; }
        this.InitializeSkillCharges(state, false);
        this.CleanupChargeRewardDedupe(state, now);
        local maxCharges = this.GetSkillChargeMax();
        if (state.skill_charges >= maxCharges)
        {
            state.skill_charge_next_at = 0.0;
            return;
        }
        this.StartSkillChargeRechargeIfNeeded(state, now);
        while (state.skill_charge_next_at > 0.0 && now >= state.skill_charge_next_at && state.skill_charges < maxCharges)
        {
            local before = state.skill_charges;
            state.skill_charges += 1;
            if (state.skill_charges > maxCharges) { state.skill_charges = maxCharges; }
            state.skill_charge_last_change_at = now;
            state.skill_charge_block_empty_logged = false;
            state.skill_charge_timer_repair_logged = false;
            printl("[XNP GR CHARGE] recharged ent=" + this.GetEntityIndexSafe(player).tostring() + " before=" + before.tostring() + " after=" + state.skill_charges.tostring());
            if (state.skill_charges >= maxCharges)
            {
                state.skill_charge_next_at = 0.0;
                state.skill_charge_full_at = now;
                state.skill_charge_hud_visible_until = now + this.Settings.skill_charge_hud_full_hide_delay;
                printl("[XNP GR CHARGE] full ent=" + this.GetEntityIndexSafe(player).tostring());
            }
            else
            {
                state.skill_charge_next_at += this.Settings.skill_charge_recharge_seconds;
            }
            state.skill_charge_hud_next_update_time = 0.0;
        }
    },

    function GrantSkillChargesFromQualifiedHit(attacker, victim, targetType, sourceType, attackId)
    {
        if (!this.Settings.skill_charge_system_enabled) { return false; }
        if (sourceType != "melee" && sourceType != "attack_dash") { return false; }
        if (!this.IsEligibleSurvivor(attacker) || !this.IsQualifiedSpecialInfected(victim)) { return false; }
        local state = this.GetPlayerState(attacker);
        if (state == null || attackId <= 0) { return false; }
        local attackerIndex = this.GetEntityIndexSafe(attacker);
        local targetIndex = this.GetEntityIndexSafe(victim);
        if (attackerIndex < 0 || targetIndex < 0) { return false; }
        local key = sourceType + ":" + attackerIndex.tostring() + ":" + targetIndex.tostring() + ":" + attackId.tostring();
        if (key in state.charge_reward_dedupe) { return false; }
        local now = this.GetCurrentTime();
        state.charge_reward_dedupe[key] <- now + 1.0;
        local maxCharges = this.GetSkillChargeMax();
        local before = state.skill_charges;
        local requested = this.Settings.special_hit_charge_restore.tointeger();
        if (requested < 0) { requested = 0; }
        state.skill_charges += requested;
        if (state.skill_charges > maxCharges) { state.skill_charges = maxCharges; }
        local applied = state.skill_charges - before;
        state.skill_charge_last_change_at = now;
        state.skill_charge_block_empty_logged = false;
        state.skill_charge_timer_repair_logged = false;
        if (state.skill_charges >= maxCharges)
        {
            state.skill_charge_next_at = 0.0;
            state.skill_charge_full_at = now;
            state.skill_charge_hud_visible_until = now + this.Settings.skill_charge_hud_full_hide_delay;
        }
        else if (state.skill_charge_next_at <= 0.0)
        {
            state.skill_charge_next_at = now + this.Settings.skill_charge_recharge_seconds;
        }
        state.skill_charge_hud_next_update_time = 0.0;
        printl("[XNP GR CHARGE] special_restore attacker=" + attackerIndex.tostring() + " target=" + targetIndex.tostring() + " type=" + targetType + " source=" + sourceType + " before=" + before.tostring() + " requested=" + requested.tostring() + " applied=" + applied.tostring() + " after=" + state.skill_charges.tostring());
        return true;
    },

    function ConsumeManualTongueEscapeCharge(player, state)
    {
        if (state == null) { return false; }
        if (!this.Settings.skill_charge_system_enabled) { return true; }
        this.InitializeSkillCharges(state, false);
        local cost = this.Settings.tongue_manual_escape_charge_cost.tointeger();
        if (cost < 1) { cost = 1; }
        local before = state.skill_charges;
        if (before < cost)
        {
            this.LogTongueEscapeRejectOnce(player, state, "no_charge");
            return false;
        }
        local now = this.GetCurrentTime();
        state.skill_charges = before - cost;
        if (state.skill_charges < 0) { state.skill_charges = 0; }
        state.skill_charge_last_change_at = now;
        state.skill_charge_block_empty_logged = false;
        state.skill_charge_timer_repair_logged = false;
        this.StartSkillChargeRechargeIfNeeded(state, now);
        state.skill_charge_hud_visible_until = now + this.Settings.skill_charge_hud_full_hide_delay;
        state.skill_charge_hud_next_update_time = 0.0;
        this.Log("[XNP ATS ESCAPE] charge_consumed victim=" + this.GetEntityIndexSafe(player).tostring() + " before=" + before.tostring() + " after=" + state.skill_charges.tostring());
        return true;
    },

    function RefundManualTongueEscapeCharge(player, state, reason)
    {
        if (state == null || !this.Settings.skill_charge_system_enabled) { return; }
        local cost = this.Settings.tongue_manual_escape_charge_cost.tointeger();
        if (cost < 1) { cost = 1; }
        local maxCharges = this.GetSkillChargeMax();
        state.skill_charges += cost;
        if (state.skill_charges > maxCharges) { state.skill_charges = maxCharges; }
        state.skill_charge_last_change_at = this.GetCurrentTime();
        if (state.skill_charges >= maxCharges) { state.skill_charge_next_at = 0.0; }
        else { this.StartSkillChargeRechargeIfNeeded(state, this.GetCurrentTime()); }
        state.skill_charge_hud_visible_until = this.GetCurrentTime() + this.Settings.skill_charge_hud_full_hide_delay;
        state.skill_charge_hud_next_update_time = 0.0;
        this.Log("[XNP ATS ESCAPE] charge_refunded reason=" + reason);
    },

    function StartSkillCooldown(player, state, nonce, mode)
    {
        return;
    },

    function UpdateSkillCooldown(player, state, now, skillDown, skillReleased)
    {
        if (state == null) { return; }
        if (skillReleased || !skillDown)
        {
            state.skill_key_released_after_cooldown = true;
            state.cooldown_requires_skill_release = false;
        }
    },

    function IsSkillCooldownBlocking(player, state, now)
    {
        return false;
    },

    function UpdateAuthoritativeAirborneState(player, state, now)
    {
        if (state == null) { return false; }
        local grounded = this.IsOnGround(player);
        local clearance = this.MeasureGroundClearance(player);
        state.last_ground_trace_distance = clearance;
        local origin = this.GetOriginSafe(player);
        if (grounded)
        {
            local wasAirborne = !state.is_authoritatively_grounded;
            if (wasAirborne && state.air_session_active && !state.landed_event_consumed)
            {
                this.ResetAirSessionOnLanding(player, state);
            }
            else if (wasAirborne && (state.state_name == this.STATE_AIR_HOLD || state.state_name == this.STATE_AIR_HOLD_CHAIN))
            {
                this.CancelAirHoldOnGroundContact(player, state);
            }
            state.is_authoritatively_grounded = true;
            state.is_on_ground = true;
            state.airborne_candidate_since = 0.0;
            state.airborne_consecutive_ticks = 0;
            state.airborne_confirmed_at = 0.0;
            state.last_confirmed_ground_time = now;
            state.last_confirmed_ground_origin = origin;
            return false;
        }

        state.is_authoritatively_grounded = false;
        state.is_on_ground = false;
        if (state.airborne_candidate_since <= 0.0)
        {
            state.airborne_candidate_since = now;
            state.airborne_consecutive_ticks = 1;
        }
        else
        {
            state.airborne_consecutive_ticks += 1;
        }

        if (state.airborne_confirmed_at <= 0.0 && this.IsSkillAirborneConfirmed(player, state, now))
        {
            state.airborne_confirmed_at = now;
            this.AirSessionSerial += 1;
            state.air_session_id = this.AirSessionSerial;
            state.air_session_nonce = state.air_session_id;
            state.air_session_attack_count = 0;
            state.held_air_activation_consumed = false;
            state.held_air_activation_session_id = state.air_session_id;
            state.held_air_activation_entered_at = 0.0;
            state.air_action_spent = false;
            state.air_session_active = true;
            state.landed_event_consumed = false;
            state.ground_press_rejected_logged = false;
            this.Log("[XNP GR GATE] airborne_confirmed ent=" + this.GetEntityIndexSafe(player).tostring() + " air_session=" + state.air_session_id.tostring() + " ground_clearance=" + clearance.tostring());
        }
        return state.airborne_confirmed_at > 0.0;
    },

    function IsSkillAirborneConfirmed(player, state, now)
    {
        if (state == null || !this.IsEligibleSurvivor(player)) { return false; }
        if (!this.Settings.skill_requires_confirmed_airborne) { return !this.IsOnGround(player); }
        if (state.is_authoritatively_grounded) { return false; }
        if (state.airborne_candidate_since <= 0.0) { return false; }
        if (state.airborne_consecutive_ticks < this.Settings.skill_airborne_confirm_ticks.tointeger()) { return false; }
        if ((now - state.airborne_candidate_since) < this.Settings.skill_airborne_confirm_seconds) { return false; }
        if (state.last_ground_trace_distance > this.Settings.skill_airborne_min_ground_clearance) { return true; }
        local origin = this.GetOriginSafe(player);
        if (origin != null && state.last_confirmed_ground_origin != null)
        {
            if (this.VectorLength(origin - state.last_confirmed_ground_origin) > this.Settings.skill_airborne_min_ground_clearance) { return true; }
        }
        return false;
    },

    function RegisterSkillKeyPress(player, state, now, walkPressed)
    {
        if (state == null || !walkPressed) { return; }
        state.skill_key_press_serial += 1;
        state.skill_key_press_time = now;
        state.tongue_escape_last_skill_press_at = now;
        state.skill_key_press_was_airborne = this.IsSkillAirborneConfirmed(player, state, now);
        if (!state.skill_key_press_was_airborne && this.Settings.skill_ground_press_requires_airborne_repress)
        {
            this.ClearPendingJumpSkillPress(state);
            if (this.Settings.ground_dash_enabled) { return; }
            this.RejectGroundSkillPress(player, state);
        }
    },

    function RejectGroundSkillPress(player, state)
    {
        if (state == null) { return; }
        state.ground_press_blocked_until_release = true;
        state.pending_jump_skill_press = false;
        if (!state.ground_press_rejected_logged)
        {
            state.ground_press_rejected_logged = true;
            this.Log("[XNP GR GATE] skill_press_rejected ent=" + this.GetEntityIndexSafe(player).tostring() + " reason=ground");
        }
    },

    function TryBufferJumpSkillPress(player, state, now)
    {
        if (state == null || !this.Settings.skill_jump_input_buffer_enabled) { return false; }
        if (!state.is_authoritatively_grounded) { return false; }
        if (!this.IsEligibleForAirSkill(player)) { return false; }
        if (!this.HasSkillChargeQuiet(state)) { return false; }
        local vz = this.ReadFloatProp(player, "m_vecVelocity[2]", 0.0);
        if (this.Settings.skill_jump_input_buffer_require_upward_motion && vz < this.Settings.skill_jump_input_buffer_min_upward_velocity) { return false; }
        local origin = this.GetOriginSafe(player);
        state.pending_jump_skill_press = true;
        state.pending_jump_skill_press_at = now;
        state.pending_jump_skill_press_serial = state.skill_key_press_serial;
        state.pending_jump_skill_upward_velocity = vz;
        if (origin != null) { state.pending_jump_skill_origin_z = origin.z; }
        else { state.pending_jump_skill_origin_z = 0.0; }
        state.ground_press_blocked_until_release = false;
        state.ground_press_rejected_logged = false;
        this.Log("[XNP GR GATE] jump_press_buffered ent=" + this.GetEntityIndexSafe(player).tostring() + " serial=" + state.pending_jump_skill_press_serial.tostring() + " vz=" + vz.tostring());
        return true;
    },

    function ClearPendingJumpSkillPress(state)
    {
        if (state == null) { return; }
        state.pending_jump_skill_press = false;
        state.pending_jump_skill_press_at = 0.0;
        state.pending_jump_skill_press_serial = 0;
        state.pending_jump_skill_origin_z = 0.0;
        state.pending_jump_skill_upward_velocity = 0.0;
    },

    function ResolvePendingJumpSkillPress(player, state, now)
    {
        if (state == null || !state.pending_jump_skill_press) { return false; }
        local age = now - state.pending_jump_skill_press_at;
        if (this.Settings.skill_jump_input_buffer_require_key_still_held && !state.skill_key_down)
        {
            this.Log("[XNP GR GATE] jump_buffer_cancelled ent=" + this.GetEntityIndexSafe(player).tostring() + " reason=key_released");
            this.ClearPendingJumpSkillPress(state);
            return false;
        }
        if (age > this.Settings.skill_jump_input_buffer_seconds)
        {
            this.Log("[XNP GR GATE] jump_buffer_expired ent=" + this.GetEntityIndexSafe(player).tostring() + " reason=no_airborne");
            this.ClearPendingJumpSkillPress(state);
            this.RejectGroundSkillPress(player, state);
            return false;
        }
        if (state.pending_jump_skill_press_serial != state.skill_key_press_serial)
        {
            this.ClearPendingJumpSkillPress(state);
            return false;
        }
        if (!this.IsSkillAirborneConfirmed(player, state, now)) { return false; }
        if (!this.IsEligibleForAirSkill(player))
        {
            this.ClearPendingJumpSkillPress(state);
            return false;
        }
        if (!this.HasSkillChargeAvailable(player, state, "normal"))
        {
            this.ClearPendingJumpSkillPress(state);
            return false;
        }
        this.ClearPendingJumpSkillPress(state);
        this.EnterAirHold(player, state, now, false);
        this.Log("[XNP GR GATE] jump_buffer_resolved ent=" + this.GetEntityIndexSafe(player).tostring() + " air_session=" + state.air_session_id.tostring() + " age=" + age.tostring());
        return true;
    },

    function TryEnterAirHoldFromFreshAirbornePress(player, state, now, skillPressed)
    {
        if (state == null || !skillPressed) { return false; }
        if (!this.IsEligibleForAirSkill(player)) { return false; }
        if (state.ground_press_blocked_until_release) { return false; }
        if (!this.IsSkillAirborneConfirmed(player, state, now)) { return false; }
        if (state.skill_key_press_time < state.airborne_confirmed_at) { return false; }
        if (state.state_name == this.STATE_AIR_DASH || state.state_name == this.STATE_AIR_SPENT) { return false; }
        if (state.air_session_id <= 0) { return false; }
        if (!this.HasSkillChargeAvailable(player, state, "normal"))
        {
            this.ProbeEligibility(player, state, "charge_empty");
            return false;
        }
        this.EnterAirHold(player, state, now, false);
        this.Log("[XNP GR GATE] air_hold_entered ent=" + this.GetEntityIndexSafe(player).tostring() + " press_serial=" + state.skill_key_press_serial.tostring() + " airborne_age=" + (now - state.airborne_confirmed_at).tostring());
        return true;
    },

    function LogHeldAirActivationBlocked(player, reason)
    {
        if (!this.Settings.airborne_gate_debug) { return; }
        this.Log("[XNP GR GATE] held_air_activation_blocked ent=" + this.GetEntityIndexSafe(player).tostring() + " reason=" + reason);
    },

    function TryEnterAirHoldFromHeldAirborneKey(player, state, now)
    {
        if (!this.Settings.skill_held_air_activation_enabled) { return false; }
        if (state == null || !state.skill_key_down)
        {
            this.LogHeldAirActivationBlocked(player, "empty");
            return false;
        }
        if (state.state_name == this.STATE_AIR_DASH || state.state_name == this.STATE_AIR_SPENT)
        {
            this.LogHeldAirActivationBlocked(player, "state");
            return false;
        }
        if (state.state_name != this.STATE_GROUND_IDLE && state.state_name != this.STATE_GROUND_HOLD)
        {
            this.LogHeldAirActivationBlocked(player, "state");
            return false;
        }
        if (this.Settings.skill_held_air_activation_once_per_air_session && state.held_air_activation_consumed && state.held_air_activation_session_id == state.air_session_id)
        {
            this.LogHeldAirActivationBlocked(player, "consumed");
            return false;
        }
        if (!this.IsSkillAirborneConfirmed(player, state, now) || state.air_session_id <= 0)
        {
            this.LogHeldAirActivationBlocked(player, "airborne");
            return false;
        }
        if (!this.IsEligibleSurvivor(player))
        {
            this.LogHeldAirActivationBlocked(player, "invalid");
            return false;
        }
        if (this.Settings.skill_held_air_activation_requires_melee && !this.IsEligibleForAirSkill(player))
        {
            this.LogHeldAirActivationBlocked(player, "weapon");
            return false;
        }
        if (this.Settings.skill_held_air_activation_requires_charge && !this.HasSkillChargeAvailable(player, state, "normal"))
        {
            this.LogHeldAirActivationBlocked(player, "charge");
            return false;
        }

        state.held_air_activation_consumed = true;
        state.held_air_activation_session_id = state.air_session_id;
        state.held_air_activation_entered_at = now;
        local promotedFromGroundHold = state.state_name == this.STATE_GROUND_HOLD;
        this.EnterAirHold(player, state, now, false);
        this.Log("[XNP GR GATE] held_air_activation ent=" + this.GetEntityIndexSafe(player).tostring() + " air_session=" + state.air_session_id.tostring() + " airborne_age=" + (now - state.airborne_confirmed_at).tostring());
        if (promotedFromGroundHold) { this.Log("[XNP GR GROUND] ground_hold_promoted_to_air_hold ent=" + this.GetEntityIndexSafe(player).tostring() + " air_session=" + state.air_session_id.tostring()); }
        return true;
    },

    function CanStartDashFromConfirmedAirborne(player, state, now, mode)
    {
        if (state == null) { return false; }
        if (state.airborne_confirmed_at <= 0.0 || state.air_session_id <= 0) { return false; }
        if (!this.IsSkillAirborneConfirmed(player, state, now)) { return false; }
        if (state.is_authoritatively_grounded) { return false; }
        if (mode == "attack" && state.air_session_attack_count >= this.Settings.skill_air_session_max_attack_dashes.tointeger()) { return false; }
        return true;
    },

    function IsValidGroundDashStartContext(player, state, now, mode)
    {
        if (!this.Settings.ground_dash_enabled || state == null) { return false; }
        if (state.state_name != this.STATE_GROUND_HOLD) { return false; }
        if (!state.is_authoritatively_grounded || !this.IsOnGround(player)) { return false; }
        if (!this.IsEligibleSurvivor(player) || this.IsOnLadder(player)) { return false; }
        if (this.Settings.ground_dash_requires_melee && !this.IsEligibleForAirSkill(player)) { return false; }
        if (this.Settings.ground_dash_requires_charge && !this.HasSkillChargeAvailable(player, state, mode)) { return false; }
        if (state.state_name == this.STATE_AIR_DASH) { return false; }
        if (this.Settings.ground_dash_once_per_skill_hold && state.ground_activation_consumed) { return false; }
        if (!state.skill_key_down && mode == "attack") { return false; }
        if (mode == "attack" && !this.Settings.ground_attack_dash_enabled) { return false; }
        if (mode != "attack" && !this.Settings.ground_normal_dash_enabled) { return false; }
        return true;
    },

    function IsValidDashStartContext(player, state, now, mode)
    {
        if (this.CanStartDashFromConfirmedAirborne(player, state, now, mode)) { return true; }
        return this.IsValidGroundDashStartContext(player, state, now, mode);
    },

    function TryEnterGroundHold(player, state, now)
    {
        if (!this.Settings.ground_dash_enabled || state == null) { return false; }
        if (state.state_name != this.STATE_GROUND_IDLE) { return false; }
        if (!state.skill_key_down) { return false; }
        if (!state.is_authoritatively_grounded || !this.IsOnGround(player)) { return false; }
        if (!this.IsEligibleSurvivor(player) || this.IsOnLadder(player)) { return false; }
        if (this.Settings.ground_dash_requires_melee && !this.IsEligibleForAirSkill(player)) { return false; }
        if (this.Settings.ground_dash_requires_charge && !this.HasSkillChargeAvailable(player, state, "normal")) { return false; }
        if (this.Settings.ground_dash_once_per_skill_hold && state.ground_activation_consumed) { return false; }
        state.ground_activation_press_serial = state.skill_key_press_serial;
        state.dash_started_from_ground = false;
        this.SetState(player, state, this.STATE_GROUND_HOLD, "ground_hold_entered");
        this.Log("[XNP GR GROUND] ground_hold_entered ent=" + this.GetEntityIndexSafe(player).tostring());
        return true;
    },

    function LeaveGroundHold(player, state, reason)
    {
        if (state == null || state.state_name != this.STATE_GROUND_HOLD) { return; }
        this.SetState(player, state, this.STATE_GROUND_IDLE, reason);
    },

    function StartGroundDash(player, state, mode)
    {
        if (state == null) { return false; }
        local now = this.GetCurrentTime();
        if (!this.IsValidGroundDashStartContext(player, state, now, mode)) { return false; }
        if (!this.StartGRDashStrike(player, state, mode))
        {
            state.dash_started_from_ground = false;
            return false;
        }
        state.ground_activation_consumed = true;
        if (mode == "attack") { this.Log("[XNP GR GROUND] ground_attack_dash_started ent=" + this.GetEntityIndexSafe(player).tostring() + " nonce=" + state.action_nonce.tostring()); }
        else { this.Log("[XNP GR GROUND] ground_normal_dash_started ent=" + this.GetEntityIndexSafe(player).tostring() + " nonce=" + state.action_nonce.tostring()); }
        return true;
    },

    function CancelAirHoldOnGroundContact(player, state)
    {
        if (state == null) { return; }
        if (state.state_name == this.STATE_AIR_HOLD || state.state_name == this.STATE_AIR_HOLD_CHAIN)
        {
            this.DisableSlowFall(player, state, "ground_contact");
            this.HideOverlay(player, state);
            this.ClearCenter(player);
            this.SetState(player, state, this.STATE_GROUND_IDLE, "air_hold_cancelled_ground_contact");
            this.Log("[XNP GR GATE] air_hold_cancelled ent=" + this.GetEntityIndexSafe(player).tostring() + " reason=ground_contact");
        }
        state.air_session_attack_count = 0;
        state.slash_qualified_this_dash = false;
        state.aerial_chain_available = false;
        state.aerial_chain_charges = 0;
        state.aerial_chain_dash_free = false;
    },

    function CanStartSkill(player, state, now, skillPressed)
    {
        return this.TryEnterAirHoldFromHeldAirborneKey(player, state, now);
    },

    function GetMaxHealthSafe(player)
    {
        local maxHealth = this.ReadIntProp(player, "m_iMaxHealth", 0);
        if (maxHealth <= 0) { maxHealth = 100; }
        return maxHealth;
    },

    function GetPainPillsDecayRate()
    {
        try
        {
            return Convars.GetFloat("pain_pills_decay_rate");
        }
        catch (error)
        {
        }
        return 0.27;
    },

    function GetTempHealthRewardAmount(targetType)
    {
        if (targetType == "tank") { return this.Settings.tank_hit_temp_health_amount.tointeger(); }
        if (targetType == "witch") { return this.Settings.witch_hit_temp_health_amount.tointeger(); }
        return this.Settings.special_hit_temp_health_amount.tointeger();
    },

    function ApplyTemporaryHealthReward(player, victim, requestedAmount, sourceType, targetType)
    {
        if (!this.Settings.special_hit_temp_health_enabled) { return 0; }
        if (!this.IsEligibleSurvivor(player)) { return 0; }
        local permanentHealth = this.GetHealthSafe(player);
        local maxHealth = this.GetMaxHealthSafe(player);
        if (maxHealth <= 0) { maxHealth = 100; }
        local capacity = maxHealth - permanentHealth;
        if (capacity < 0.0) { capacity = 0.0; }
        local now = this.GetCurrentTime();
        local rawBuffer = this.ReadFloatProp(player, "m_healthBuffer", 0.0);
        local bufferTime = this.ReadFloatProp(player, "m_healthBufferTime", now);
        local decayRate = this.GetPainPillsDecayRate();
        local elapsed = now - bufferTime;
        if (elapsed < 0.0) { elapsed = 0.0; }
        local currentBuffer = rawBuffer - elapsed * decayRate;
        if (currentBuffer < 0.0) { currentBuffer = 0.0; }
        local newBuffer = currentBuffer + requestedAmount;
        if (newBuffer > capacity) { newBuffer = capacity; }
        local applied = newBuffer - currentBuffer;
        if (applied < 0.0) { applied = 0.0; }
        if (applied > 0.0)
        {
            this.SetFloatProp(player, "m_healthBuffer", newBuffer);
            this.SetFloatProp(player, "m_healthBufferTime", now);
        }
        this.Log("temp_health_reward attacker=" + this.GetEntityIndexSafe(player).tostring() + " target=" + this.GetEntityIndexSafe(victim).tostring() + " type=" + targetType + " source=" + sourceType + " requested=" + requestedAmount.tostring() + " applied=" + applied.tostring() + " buffer_before=" + currentBuffer.tostring() + " buffer_after=" + newBuffer.tostring());
        return applied.tointeger();
    },

    function ResetCooldownForSpecialHit(attacker, victim, state, sourceType, specialType)
    {
        return false;
    },

    function MarkSpecialHitHudFlash(state, tempGain)
    {
        if (state == null) { return; }
        state.skill_charge_hud_next_update_time = 0.0;
    },

    function ApplySpecialImpact(attacker, victim, state, sourceType, specialType)
    {
        if (!this.IsUsableEntity(victim)) { return false; }
        if (specialType == "tank")
        {
            if (sourceType == "melee" && this.Settings.tank_melee_minor_stagger_enabled && this.GetCurrentTime() >= state.tank_melee_minor_stagger_until)
            {
                state.tank_melee_minor_stagger_until = this.GetCurrentTime() + this.Settings.tank_melee_minor_stagger_cooldown;
                try
                {
                    victim.Stagger(attacker);
                }
                catch (error)
                {
                }
            }
            return true;
        }
        if (specialType == "witch") { return false; }
        local direction = null;
        local attackerOrigin = this.GetOriginSafe(attacker);
        local victimOrigin = this.GetOriginSafe(victim);
        if (attackerOrigin != null && victimOrigin != null)
        {
            direction = this.NormalizeVector(Vector(victimOrigin.x - attackerOrigin.x, victimOrigin.y - attackerOrigin.y, 0.0));
        }
        if (direction == null) { direction = Vector(1.0, 0.0, 0.0); }
        local horizontal = this.Settings.special_melee_knockback_horizontal;
        local vertical = this.Settings.special_melee_knockback_vertical;
        if (sourceType == "attack_dash")
        {
            horizontal = this.Settings.special_dash_knockback_horizontal;
            vertical = this.Settings.special_dash_knockback_vertical;
        }
        this.ApplyVelocity(victim, Vector(direction.x * horizontal, direction.y * horizontal, vertical));
        if (sourceType == "attack_dash" && this.Settings.special_dash_impact_stagger_enabled)
        {
            try
            {
                victim.Stagger(attacker);
            }
            catch (error)
            {
            }
        }
        return true;
    },

    function HandleQualifiedSpecialHit(attacker, victim, sourceType, attackId, damageAmount)
    {
        if (attackId <= 0 || damageAmount <= 0.0) { return false; }
        if (!this.IsEligibleSurvivor(attacker)) { return false; }
        if (!this.IsQualifiedSpecialInfected(victim)) { return false; }
        local state = this.GetPlayerState(attacker);
        if (state == null) { return false; }
        local specialType = this.GetSpecialInfectedType(victim);
        local key = this.GetEntityIndexSafe(attacker).tostring() + ":" + this.GetEntityIndexSafe(victim).tostring() + ":" + sourceType + ":" + attackId.tostring();
        if (key in this.SpecialHitDedup) { return false; }
        this.SpecialHitDedup[key] <- this.GetCurrentTime() + 1.0;
        local requestedTemp = this.GetTempHealthRewardAmount(specialType);
        local tempApplied = this.ApplyTemporaryHealthReward(attacker, victim, requestedTemp, sourceType, specialType);
        this.GrantSkillChargesFromQualifiedHit(attacker, victim, specialType, sourceType, attackId);
        this.MarkSpecialHitHudFlash(state, tempApplied);
        this.ApplySpecialImpact(attacker, victim, state, sourceType, specialType);
        this.Log("special_hit_qualified attacker=" + this.GetEntityIndexSafe(attacker).tostring() + " target=" + this.GetEntityIndexSafe(victim).tostring() + " type=" + specialType + " source=" + sourceType + " attack_id=" + attackId.tostring());
        this.TryGrantAerialChain(attacker, victim, state, sourceType, specialType);
        return true;
    },

    function MarkSlashQualifiedHit(player, state, target, targetType)
    {
        if (state == null) { return false; }
        if (!this.Settings.skill_chain_requires_qualified_special_hit) { return false; }
        if (state.dash_mode != "attack" || state.state_name != this.STATE_AIR_DASH) { return false; }
        if (state.dash_started_from_ground) { return false; }
        if (!this.IsSpecialHealTargetType(targetType)) { return false; }
        local targetIndex = this.GetEntityIndexSafe(target);
        if (targetIndex < 0) { return false; }
        state.slash_qualified_this_dash = true;
        state.slash_qualified_target = targetIndex;
        state.slash_qualified_type = targetType;
        this.Log("[XNP GR CHAIN] slash_qualified ent=" + this.GetEntityIndexSafe(player).tostring() + " air_session=" + state.air_session_id.tostring() + " slash=" + state.current_slash_index.tostring() + " target=" + targetIndex.tostring() + " type=" + targetType);
        return true;
    },

    function TryGrantAerialChain(attacker, victim, state, sourceType, specialType)
    {
        if (state != null)
        {
            if (state.dash_started_from_ground) { return false; }
            state.aerial_chain_available = false;
            state.aerial_chain_charges = 0;
            state.aerial_chain_dash_free = false;
        }
        return true;
    },

    function ConsumeAerialChainForHold(player, state, now)
    {
        if (state != null)
        {
            state.aerial_chain_available = false;
            state.aerial_chain_charges = 0;
            state.aerial_chain_dash_free = false;
        }
        return false;
    },

    function CleanupSpecialHitDedup(now)
    {
        local expired = [];
        foreach (key, untilTime in this.SpecialHitDedup)
        {
            if (now > untilTime) { expired.append(key); }
        }
        foreach (key in expired)
        {
            delete this.SpecialHitDedup[key];
        }
    },

    function MakeDashDamageContextKey(attacker, victim)
    {
        return this.GetEntityIndexSafe(attacker).tostring() + ":" + this.GetEntityIndexSafe(victim).tostring();
    },

    function RegisterDashDamageContext(attacker, victim, nonce)
    {
        if (nonce <= 0 || !this.IsUsableEntity(attacker) || !this.IsUsableEntity(victim)) { return; }
        local key = this.MakeDashDamageContextKey(attacker, victim);
        this.DashDamageContext[key] <- {
            attacker = this.GetEntityIndexSafe(attacker),
            victim = this.GetEntityIndexSafe(victim),
            nonce = nonce,
            source = "attack_dash",
            expires = this.GetCurrentTime() + 0.30,
            logged = false,
        };
    },

    function IsDamageFromActiveDashContext(attacker, victim)
    {
        local key = this.MakeDashDamageContextKey(attacker, victim);
        if (!(key in this.DashDamageContext)) { return false; }
        local ctx = this.DashDamageContext[key];
        if (this.GetCurrentTime() > ctx.expires)
        {
            delete this.DashDamageContext[key];
            return false;
        }
        if (!ctx.logged)
        {
            ctx.logged = true;
            this.Log("melee_event_suppressed_by_dash_context attacker=" + this.GetEntityIndexSafe(attacker).tostring() + " target=" + this.GetEntityIndexSafe(victim).tostring() + " nonce=" + ctx.nonce.tostring());
        }
        return true;
    },

    function CleanupDashDamageContext(now)
    {
        local expired = [];
        foreach (key, ctx in this.DashDamageContext)
        {
            if (now > ctx.expires) { expired.append(key); }
        }
        foreach (key in expired)
        {
            delete this.DashDamageContext[key];
        }
    },

    function GetUserIDParam(params, key)
    {
        if (params == null || typeof params != "table" || !(key in params)) { return 0; }
        try { return params[key].tointeger(); } catch (error) {}
        return 0;
    },

    function GetPlayerFromEventUserID(userid)
    {
        if (userid <= 0) { return null; }
        try { return GetPlayerFromUserID(userid); } catch (error) {}
        return null;
    },

    function PrintCenter(player, text)
    {
        if (!this.Settings.center_text_enabled) { return; }
        try { ClientPrint(player, 4, text); } catch (error) {}
    },

    function ClearCenter(player)
    {
        try { ClientPrint(player, 4, ""); } catch (error) {}
    },

    function FormatOneDecimal(value)
    {
        if (value < 0.0) { value = 0.0; }
        local scaled = (value * 10.0 + 0.5).tointeger();
        local whole = scaled / 10;
        local frac = scaled - (whole * 10);
        return whole.tostring() + "." + frac.tostring();
    },

    function GetSkillChargeNextSeconds(state, now)
    {
        if (state == null) { return -1; }
        local maxCharges = this.GetSkillChargeMax();
        if (state.skill_charges >= maxCharges) { return -1; }
        local remaining = state.skill_charge_next_at - now;
        if (remaining < 0.0) { remaining = 0.0; }
        local seconds = remaining.tointeger();
        if (remaining > seconds.tofloat()) { seconds += 1; }
        if (seconds < 1) { seconds = 1; }
        local maxSeconds = this.Settings.skill_charge_recharge_seconds.tointeger();
        if (maxSeconds < 1) { maxSeconds = 4; }
        if (seconds > maxSeconds) { seconds = maxSeconds; }
        return seconds;
    },

    function RepairSkillChargeTimerIfNeeded(player, state, now)
    {
        if (state == null || !this.Settings.skill_charge_system_enabled) { return; }
        local maxCharges = this.GetSkillChargeMax();
        if (state.skill_charges >= maxCharges) { return; }
        if (state.skill_charge_next_at <= 0.0)
        {
            state.skill_charge_next_at = now + this.Settings.skill_charge_recharge_seconds;
            state.skill_charge_hud_next_update_time = 0.0;
            if (!state.skill_charge_timer_repair_logged)
            {
                state.skill_charge_timer_repair_logged = true;
                this.Log("[XNP GR HUD] charge_timer_repaired ent=" + this.GetEntityIndexSafe(player).tostring() + " next_at=" + state.skill_charge_next_at.tostring());
            }
        }
    },

    function BuildSkillChargeHUDText(state, now)
    {
        local maxCharges = this.GetSkillChargeMax();
        local charges = state.skill_charges;
        if (charges < 0) { charges = 0; }
        if (charges > maxCharges) { charges = maxCharges; }
        local bar = "";
        for (local i = 0; i < maxCharges; i += 1)
        {
            if (i < charges) { bar += this.Settings.skill_charge_hud_full_symbol; }
            else { bar += this.Settings.skill_charge_hud_empty_symbol; }
        }
        local text = this.Settings.skill_charge_hud_label + " [" + bar + "]";
        if (this.Settings.skill_charge_hud_show_next_seconds && charges < maxCharges)
        {
            local seconds = this.GetSkillChargeNextSeconds(state, now);
            if (seconds > 0)
            {
                text += " " + this.Settings.skill_charge_hud_next_label + " " + seconds.tostring() + this.Settings.skill_charge_hud_seconds_suffix;
            }
        }
        return text;
    },

    function ShouldShowSkillChargeHUD(player, state, now)
    {
        if (!this.Settings.skill_charge_hud_enabled || state == null || !this.IsHumanPlayer(player)) { return false; }
        if (!this.IsEligibleSurvivor(player)) { return false; }
        local weapon = this.GetActiveWeapon(player);
        local melee = this.IsMeleeWeapon(weapon);
        local wasMelee = state.skill_charge_last_weapon_is_melee;
        if (wasMelee && !melee && state.skill_charges >= this.GetSkillChargeMax())
        {
            state.skill_charge_hud_visible_until = now + this.Settings.skill_charge_hud_full_hide_delay;
            state.skill_charge_hud_next_update_time = 0.0;
        }
        state.skill_charge_last_weapon_is_melee = melee;
        if (melee && this.Settings.skill_charge_hud_show_when_melee) { return true; }
        if (state.skill_charges < this.GetSkillChargeMax() && this.Settings.skill_charge_hud_show_when_incomplete) { return true; }
        return now < state.skill_charge_hud_visible_until;
    },

    function UpdateSkillChargeHUD(player, state, now)
    {
        if (state == null) { return; }
        this.UpdateSkillChargeRecharge(player, state, now);
        this.RepairSkillChargeTimerIfNeeded(player, state, now);
        if (!this.ShouldShowSkillChargeHUD(player, state, now))
        {
            this.HideSkillHUD(player, state);
            return;
        }
        if (now < state.skill_charge_hud_next_update_time) { return; }
        state.skill_charge_hud_next_update_time = now + this.Settings.skill_charge_hud_update_interval;
        local text = this.BuildSkillChargeHUDText(state, now);
        local seconds = this.GetSkillChargeNextSeconds(state, now);
        if (text == state.skill_charge_hud_last_text && seconds == state.skill_charge_hud_last_seconds && state.skill_charge_hud_last_visible && !state.skill_charge_hud_hidden) { return; }
        state.skill_charge_hud_last_text = text;
        state.skill_charge_hud_last_seconds = seconds;
        state.skill_charge_hud_last_visible = true;
        state.skill_charge_hud_hidden = false;
        try
        {
            ClientPrint(player, 4, text);
            this.Log("[XNP GR HUD] charge_visible ent=" + this.GetEntityIndexSafe(player).tostring() + " text=" + text);
        }
        catch (error)
        {
        }
    },

    function UpdateSkillHUD(player, state, now)
    {
        this.UpdateSkillChargeHUD(player, state, now);
    },

    function HideSkillHUD(player, state)
    {
        if (state == null || state.skill_charge_hud_hidden) { return; }
        state.skill_charge_hud_hidden = true;
        state.skill_charge_hud_last_text = "";
        state.skill_charge_hud_last_seconds = -1;
        state.skill_charge_hud_last_visible = false;
        try
        {
            ClientPrint(player, 4, "");
            this.Log("[XNP GR HUD] charge_hidden ent=" + this.GetEntityIndexSafe(player).tostring() + " reason=hidden");
        }
        catch (error)
        {
        }
    },

    function GetOverlayTargetName(player)
    {
        return "xnp_gr_air_overlay_" + this.GetEntityIndexSafe(player).tostring();
    },

    function EnsureOverlay(player, state)
    {
        if (!this.Settings.overlay_enabled || state == null) { return null; }
        if (this.IsUsableEntity(state.overlay_entity)) { return state.overlay_entity; }
        state.overlay_targetname = this.GetOverlayTargetName(player);
        try
        {
            state.overlay_entity = SpawnEntityFromTable("env_screenoverlay",
            {
                targetname = state.overlay_targetname,
                OverlayName1 = this.OverlayMaterial,
                OverlayTime1 = this.Settings.overlay_time.tostring(),
            });
        }
        catch (error)
        {
            state.overlay_entity = null;
        }
        return state.overlay_entity;
    },

    function ShowOverlay(player, state)
    {
        local overlay = this.EnsureOverlay(player, state);
        if (!this.IsUsableEntity(overlay)) { return false; }
        try
        {
            DoEntFire(state.overlay_targetname, "StartOverlays", "", 0.0, player, player);
            return true;
        }
        catch (error) {}
        return false;
    },

    function HideOverlay(player, state)
    {
        if (state == null || state.overlay_targetname == "") { return; }
        try { DoEntFire(state.overlay_targetname, "StopOverlays", "", 0.0, player, player); } catch (error) {}
        try { DoEntFire(state.overlay_targetname, "Kill", "", 0.05, null, null); } catch (error2) {}
        state.overlay_entity = null;
        state.overlay_targetname = "";
    },

    function EnableSlowFall(player, state, reason)
    {
        if (state == null) { return; }
        if (!state.slow_fall_active)
        {
            this.Log("slow_fall_enabled ent=" + this.GetEntityIndexSafe(player).tostring() + " reason=" + reason);
        }
        state.slow_fall_active = true;
    },

    function DisableSlowFall(player, state, reason)
    {
        if (state == null || !state.slow_fall_active) { return; }
        state.slow_fall_active = false;
        this.Log("slow_fall_disabled ent=" + this.GetEntityIndexSafe(player).tostring() + " reason=" + reason);
    },

    function ApplySlowFall(player, state)
    {
        if (state == null || !state.slow_fall_active || state.state_name != this.STATE_AIR_HOLD) { return; }
        local vx = this.ReadFloatProp(player, "m_vecVelocity[0]", 0.0);
        local vy = this.ReadFloatProp(player, "m_vecVelocity[1]", 0.0);
        local vz = this.ReadFloatProp(player, "m_vecVelocity[2]", 0.0);
        if (vz < this.Settings.slow_fall_max_down_speed)
        {
            this.ApplyVelocity(player, Vector(vx, vy, this.Settings.slow_fall_max_down_speed));
        }
    },

    function ArmFallProtection(player, state, source)
    {
        if ((!this.Settings.skill_fall_protection_enabled && !this.Settings.skill_fall_guard_enabled) || state == null) { return; }
        local now = this.GetCurrentTime();
        state.fall_protection_active = true;
        state.fall_damage_guard_active = true;
        state.fall_protection_air_until = now + this.Settings.skill_fall_protection_air_grace;
        state.fall_protection_until = state.fall_protection_air_until;
        state.fall_guard_active = true;
        state.fall_guard_session = state.air_session_nonce;
        state.fall_guard_until = now + this.Settings.skill_fall_guard_max_session_seconds;
        state.fall_guard_ground_until = 0.0;
        state.fall_guard_landed = false;
        state.fall_guard_prelanding_reset_done = false;
        state.fall_guard_cushion_used = false;
        state.fall_guard_hook_seen = false;
        state.fall_guard_last_damage_type = -1;
        state.fall_guard_last_damage_amount = 0.0;
        state.fall_guard_health_before = this.GetHealthSafe(player);
        state.fall_guard_health_after = state.fall_guard_health_before;
        state.fall_protection_ground_contact_time = 0.0;
        state.fall_protection_ground_until = 0.0;
        state.fall_protection_pending_finish = false;
        state.fall_protection_source = source;
        state.fall_protection_session = state.air_session_nonce;
        state.fall_protection_consumed_logged = false;
        state.fall_protection_block_logged = false;
        state.fall_protection_failure_logged = false;
        if (!state.fall_protection_armed_logged)
        {
            state.fall_protection_armed_logged = true;
            this.Log("fall_guard_armed ent=" + this.GetEntityIndexSafe(player).tostring() + " session=" + state.fall_protection_session.tostring() + " until=" + state.fall_guard_until.tostring() + " source=" + source);
        }
    },

    function BeginFallProtectionGroundGrace(player, state)
    {
        if ((!this.Settings.skill_fall_protection_enabled && !this.Settings.skill_fall_guard_enabled) || state == null || !state.fall_damage_guard_active) { return; }
        local now = this.GetCurrentTime();
        state.fall_protection_ground_contact_time = now;
        state.fall_protection_ground_until = now + this.Settings.skill_fall_guard_ground_grace;
        state.fall_protection_until = state.fall_protection_ground_until;
        state.fall_guard_ground_until = state.fall_protection_ground_until;
        state.fall_guard_landed = true;
        state.fall_protection_pending_finish = true;
        this.ResetFallVelocityFields(player, state);
        this.Log("fall_guard_ground_grace ent=" + this.GetEntityIndexSafe(player).tostring() + " until=" + state.fall_protection_ground_until.tostring());
    },

    function MaintainFallProtection(player, state)
    {
        if ((!this.Settings.skill_fall_protection_enabled && !this.Settings.skill_fall_guard_enabled) || state == null || !state.fall_damage_guard_active) { return; }
        local now = this.GetCurrentTime();
        if (state.fall_guard_active)
        {
            this.ResetFallVelocityFields(player, state);
            this.TryFallGuardPhysicalCushion(player, state);
            this.TryPrelandingFallVelocityReset(player, state);
        }
        if (now > state.fall_protection_until || now > state.fall_guard_until)
        {
            this.ConsumeFallProtection(player, state);
            return;
        }
    },

    function ConsumeFallProtection(player, state)
    {
        if (state == null || !state.fall_protection_active) { return; }
        state.fall_protection_active = false;
        state.fall_damage_guard_active = false;
        state.fall_guard_active = false;
        state.fall_protection_pending_finish = false;
        if (!state.fall_protection_consumed_logged)
        {
            state.fall_protection_consumed_logged = true;
            this.Log("fall_guard_released ent=" + this.GetEntityIndexSafe(player).tostring() + " session=" + state.fall_protection_session.tostring());
        }
        state.fall_protection_armed_logged = false;
    },

    function ResetFallVelocityFields(player, state)
    {
        if (state == null || !state.fall_guard_active) { return; }
        this.ClampFallVelocityProp(player, state, "m_flFallVelocity");
        this.ClampFallVelocityProp(player, state, "m_Local.m_flFallVelocity");
    },

    function TryPrelandingFallVelocityReset(player, state)
    {
        if (state == null || state.fall_guard_prelanding_reset_done || this.IsOnGround(player)) { return; }
        local origin = this.GetOriginSafe(player);
        if (origin == null) { return; }
        local endPos = origin + Vector(0, 0, -this.Settings.skill_fall_guard_prelanding_distance);
        if (this.GRTraceBlockedByWorld(origin, endPos, player, null))
        {
            state.fall_guard_prelanding_reset_done = true;
            this.ResetFallVelocityFields(player, state);
            this.Log("fall_velocity_prelanding_reset ent=" + this.GetEntityIndexSafe(player).tostring() + " session=" + state.fall_protection_session.tostring());
        }
    },

    function GetGroundTraceDistance(player, distance)
    {
        local origin = this.GetOriginSafe(player);
        if (origin == null) { return null; }
        local trace =
        {
            start = origin,
            end = origin + Vector(0, 0, -distance),
            ignore = player,
        };
        try
        {
            TraceLine(trace);
        }
        catch (error)
        {
            return null;
        }
        if (!("hit" in trace) || !trace.hit) { return null; }
        if (!("fraction" in trace)) { return distance; }
        return distance * trace.fraction;
    },

    function TryFallGuardPhysicalCushion(player, state)
    {
        if (!this.Settings.skill_fall_guard_physical_cushion_enabled || state == null || state.fall_guard_cushion_used) { return false; }
        if (this.IsOnGround(player)) { return false; }
        local vz = this.ReadFloatProp(player, "m_vecVelocity[2]", 0.0);
        if (vz > -this.Settings.skill_fall_guard_cushion_trigger_speed) { return false; }
        local groundDistance = this.GetGroundTraceDistance(player, this.Settings.skill_fall_guard_cushion_trace_distance);
        if (groundDistance == null || groundDistance > this.Settings.skill_fall_guard_cushion_trace_distance) { return false; }
        local vx = this.ReadFloatProp(player, "m_vecVelocity[0]", 0.0);
        local vy = this.ReadFloatProp(player, "m_vecVelocity[1]", 0.0);
        local newZ = -this.Settings.skill_fall_guard_cushion_max_down_speed;
        if (vz > newZ) { return false; }
        state.fall_guard_cushion_used = true;
        this.ApplyVelocity(player, Vector(vx, vy, newZ));
        this.Log("fall_guard_physical_cushion ent=" + this.GetEntityIndexSafe(player).tostring() + " session=" + state.fall_protection_session.tostring() + " before_z=" + vz.tostring() + " after_z=" + newZ.tostring() + " ground_distance=" + groundDistance.tostring());
        return true;
    },

    function ClampFallVelocityProp(player, state, propName)
    {
        local before = this.ReadFloatProp(player, propName, null);
        if (before == null) { return false; }
        if (before <= this.Settings.skill_fall_protection_max_velocity) { return false; }
        if (!this.SetFloatProp(player, propName, this.Settings.skill_fall_protection_max_velocity)) { return false; }
        if (state.fall_velocity_clamp_count < 2)
        {
            state.fall_velocity_clamp_count += 1;
            this.Log("fall_velocity_clamped ent=" + this.GetEntityIndexSafe(player).tostring() + " session=" + state.fall_protection_session.tostring() + " prop=" + propName + " before=" + before.tostring() + " after=" + this.Settings.skill_fall_protection_max_velocity.tostring());
        }
        return true;
    },

    function IsFallProtectionWindowActive(state)
    {
        if (state == null || !state.fall_protection_active) { return false; }
        return this.GetCurrentTime() <= state.fall_protection_until;
    },

    function GetDamageTableValue(data, key, fallback)
    {
        if (data != null && typeof data == "table" && key in data) { return data[key]; }
        return fallback;
    },

    function IsLikelyFallDamageTable(data, victim, state)
    {
        if (!this.IsFallProtectionWindowActive(state)) { return false; }
        local attacker = this.GetDamageTableValue(data, "Attacker", null);
        local inflictor = this.GetDamageTableValue(data, "Inflictor", null);
        if (attacker == victim) { return false; }
        if (this.IsUsableEntity(attacker) || this.IsUsableEntity(inflictor)) { return false; }
        local damageType = this.GetDamageTableValue(data, "DamageType", -1);
        if (damageType == null || damageType < 0 || (damageType & 32) == 0) { return false; }
        local fallVelocity = this.ReadFloatProp(victim, "m_flFallVelocity", 0.0);
        if (fallVelocity > 0.0) { return true; }
        if (state.fall_protection_pending_finish) { return true; }
        return this.IsOnGround(victim) && state.fall_protection_ground_until > 0.0;
    },

    function AllowTakeDamage(data)
    {
        if (data == null || typeof data != "table") { return true; }
        local victim = this.GetDamageTableValue(data, "Victim", null);
        if (!this.IsEligibleSurvivor(victim)) { return true; }
        local state = this.GetPlayerState(victim);
        if (state != null && state.fall_damage_guard_active)
        {
            state.fall_guard_hook_seen = true;
            state.fall_guard_last_damage_type = this.GetDamageTableValue(data, "DamageType", -1);
            state.fall_guard_last_damage_amount = this.GetDamageTableValue(data, "DamageDone", 0.0);
            state.fall_guard_health_before = this.GetHealthSafe(victim);
            this.Log("fall_damage_hook_seen ent=" + this.GetEntityIndexSafe(victim).tostring() + " type=" + state.fall_guard_last_damage_type.tostring() + " amount=" + state.fall_guard_last_damage_amount.tostring() + " guarded=true");
        }
        if (!this.IsLikelyFallDamageTable(data, victim, state)) { return true; }
        local amount = this.GetDamageTableValue(data, "DamageDone", 0.0);
        local damageType = this.GetDamageTableValue(data, "DamageType", -1);
        try
        {
            if ("DamageDone" in data) { data.DamageDone = 0.0; }
        }
        catch (error) {}
        if (!state.fall_protection_block_logged)
        {
            state.fall_protection_block_logged = true;
            this.Log("fall_damage_blocked ent=" + this.GetEntityIndexSafe(victim).tostring() + " session=" + state.fall_protection_session.tostring() + " amount=" + amount.tostring() + " type=" + damageType.tostring());
        }
        return false;
    },

    function ApplyVelocity(entity, velocity)
    {
        if (!this.IsUsableEntity(entity) || velocity == null) { return false; }
        try { entity.SetVelocity(velocity); return true; } catch (error) {}
        try { entity.ApplyAbsVelocityImpulse(velocity); return true; } catch (error2) {}
        try { NetProps.SetPropVector(entity, "m_vecBaseVelocity", velocity); return true; } catch (error3) {}
        return false;
    },

    function ReadVelocityVector(entity)
    {
        if (!this.IsUsableEntity(entity)) { return Vector(0.0, 0.0, 0.0); }
        return Vector(this.ReadFloatProp(entity, "m_vecVelocity[0]", 0.0), this.ReadFloatProp(entity, "m_vecVelocity[1]", 0.0), this.ReadFloatProp(entity, "m_vecVelocity[2]", 0.0));
    },

    function VectorToLog(vec)
    {
        if (vec == null) { return "null"; }
        return vec.x.tostring() + "," + vec.y.tostring() + "," + vec.z.tostring();
    },

    function ApplyTankAreaVelocity(tank, velocity)
    {
        if (!this.IsUsableEntity(tank) || velocity == null) { return false; }
        try { tank.ApplyAbsVelocityImpulse(velocity); return true; } catch (error) {}
        try { NetProps.SetPropVector(tank, "m_vecBaseVelocity", velocity); return true; } catch (error2) {}
        try { tank.SetVelocity(velocity); return true; } catch (error3) {}
        return false;
    },

    function GetTankAreaKnockbackKey(tank, nonce)
    {
        return nonce.tostring() + ":" + this.GetEntityIndexSafe(tank).tostring();
    },

    function GetTankAreaKnockbackDirection(attacker, tank, state)
    {
        local attackerOrigin = this.GetOriginSafe(attacker);
        local tankOrigin = this.GetOriginSafe(tank);
        local direction = null;
        if (attackerOrigin != null && tankOrigin != null)
        {
            direction = this.NormalizeVector(Vector(tankOrigin.x - attackerOrigin.x, tankOrigin.y - attackerOrigin.y, 0.0));
        }
        if (direction == null && state != null && state.dash_direction != null)
        {
            direction = this.NormalizeVector(Vector(state.dash_direction.x, state.dash_direction.y, 0.0));
        }
        return direction;
    },

    function ApplyTankAreaKnockback(attacker, tank, state, nonce, dashMode)
    {
        if (!this.Settings.tank_area_knockback_enabled) { return false; }
        if (state == null || nonce <= 0 || !this.IsTankTarget(tank)) { return false; }
        local key = this.GetTankAreaKnockbackKey(tank, nonce);
        if (key in state.tank_area_knockback_targets) { return false; }
        state.tank_area_knockback_targets[key] <- true;
        local direction = this.GetTankAreaKnockbackDirection(attacker, tank, state);
        if (direction == null)
        {
            this.Log("[XNP GR KNOCKBACK] TANK_KNOCKBACK_VERIFY_FAILURE target=" + this.GetEntityIndexSafe(tank).tostring() + " nonce=" + nonce.tostring() + " displacement=0 reason=no_direction");
            return false;
        }
        local horizontal = this.Settings.normal_dash_tank_knockback_horizontal;
        local vertical = this.Settings.normal_dash_tank_knockback_vertical;
        local minDisplacement = this.Settings.tank_area_knockback_normal_min_displacement;
        if (dashMode == "attack")
        {
            horizontal = this.Settings.attack_dash_tank_knockback_horizontal;
            vertical = this.Settings.attack_dash_tank_knockback_vertical;
            minDisplacement = this.Settings.tank_area_knockback_attack_min_displacement;
        }
        local originBefore = this.GetOriginSafe(tank);
        local velocityBefore = this.ReadVelocityVector(tank);
        local impulse = Vector(direction.x * horizontal, direction.y * horizontal, vertical);
        local applied = this.ApplyTankAreaVelocity(tank, impulse);
        if (!applied)
        {
            this.Log("[XNP GR KNOCKBACK] TANK_KNOCKBACK_VERIFY_FAILURE target=" + this.GetEntityIndexSafe(tank).tostring() + " nonce=" + nonce.tostring() + " displacement=0 reason=velocity_interface_failed");
            return false;
        }
        local velocityAfter = this.ReadVelocityVector(tank);
        state.tank_knockback_velocity_grace_until = this.GetCurrentTime() + this.Settings.tank_knockback_stun_velocity_grace;
        state.tank_knockback_grace_nonce = nonce;
        state.tank_area_knockback_verify[key] <-
        {
            target = tank,
            target_index = this.GetEntityIndexSafe(tank),
            nonce = nonce,
            mode = dashMode,
            origin_before = originBefore,
            velocity_before = velocityBefore,
            direction = direction,
            horizontal = horizontal,
            vertical = vertical,
            min_displacement = minDisplacement,
            verify_at = this.GetCurrentTime() + this.Settings.tank_area_knockback_verify_delay,
            retry_done = false,
        };
        this.Log("[XNP GR KNOCKBACK] velocity_written target=" + this.GetEntityIndexSafe(tank).tostring() + " before=" + this.VectorToLog(velocityBefore) + " after=" + this.VectorToLog(velocityAfter));
        this.Log("[XNP GR KNOCKBACK] tank_applied target=" + this.GetEntityIndexSafe(tank).tostring() + " nonce=" + nonce.tostring() + " mode=" + dashMode + " horizontal=" + horizontal.tostring() + " vertical=" + vertical.tostring());
        return true;
    },

    function ProcessTankAreaKnockbackVerify(player, state, now)
    {
        if (state == null) { return; }
        local finished = [];
        foreach (key, data in state.tank_area_knockback_verify)
        {
            if (data == null || now < data.verify_at) { continue; }
            local tank = data.target;
            if (!this.IsUsableEntity(tank))
            {
                finished.append(key);
                continue;
            }
            this.Log("[XNP GR KNOCKBACK] velocity_at_verify target=" + data.target_index.tostring() + " velocity=" + this.VectorToLog(this.ReadVelocityVector(tank)));
            local current = this.GetOriginSafe(tank);
            local displacement = 0.0;
            if (current != null && data.origin_before != null)
            {
                displacement = this.VectorLength(Vector(current.x - data.origin_before.x, current.y - data.origin_before.y, 0.0));
            }
            if (displacement >= data.min_displacement)
            {
                this.Log("[XNP GR KNOCKBACK] tank_verified target=" + data.target_index.tostring() + " nonce=" + data.nonce.tostring() + " displacement=" + displacement.tostring());
                finished.append(key);
                continue;
            }
            if (this.Settings.tank_area_knockback_retry_enabled && !data.retry_done)
            {
                data.retry_done = true;
                data.origin_before = current;
                data.verify_at = now + this.Settings.tank_area_knockback_verify_delay;
                local scale = this.Settings.tank_area_knockback_retry_scale;
                local retryVelocity = Vector(data.direction.x * data.horizontal * scale, data.direction.y * data.horizontal * scale, data.vertical * scale);
                this.ApplyTankAreaVelocity(tank, retryVelocity);
                state.tank_knockback_velocity_grace_until = now + this.Settings.tank_knockback_stun_velocity_grace;
                state.tank_knockback_grace_nonce = data.nonce;
                this.Log("[XNP GR KNOCKBACK] tank_retry target=" + data.target_index.tostring() + " nonce=" + data.nonce.tostring());
                continue;
            }
            this.Log("[XNP GR KNOCKBACK] TANK_KNOCKBACK_VERIFY_FAILURE target=" + data.target_index.tostring() + " nonce=" + data.nonce.tostring() + " displacement=" + displacement.tostring());
            finished.append(key);
        }
        foreach (key in finished)
        {
            if (key in state.tank_area_knockback_verify) { delete state.tank_area_knockback_verify[key]; }
        }
    },

    function StopPlayerVelocity(player)
    {
        this.ApplyVelocity(player, Vector(0.0, 0.0, 0.0));
    },

    function ApplyPostDashBrake(player, state, reason)
    {
        if (!this.Settings.post_dash_brake_enabled || state == null || state.action_nonce <= 0) { return false; }
        if (state.post_dash_brake_nonce == state.action_nonce) { return false; }
        local vx = this.ReadFloatProp(player, "m_vecVelocity[0]", 0.0);
        local vy = this.ReadFloatProp(player, "m_vecVelocity[1]", 0.0);
        local vz = this.ReadFloatProp(player, "m_vecVelocity[2]", 0.0);
        local beforeXY = sqrt((vx * vx) + (vy * vy));
        local afterX = vx * this.Settings.post_dash_horizontal_scale;
        local afterY = vy * this.Settings.post_dash_horizontal_scale;
        local afterXY = sqrt((afterX * afterX) + (afterY * afterY));
        if (afterXY > this.Settings.post_dash_max_horizontal_speed && afterXY > 0.01)
        {
            local scale = this.Settings.post_dash_max_horizontal_speed / afterXY;
            afterX = afterX * scale;
            afterY = afterY * scale;
            afterXY = this.Settings.post_dash_max_horizontal_speed;
        }
        local afterZ = vz;
        if (afterZ > 0.0) { afterZ = 0.0; }
        if (this.IsOnGround(player) && afterZ > -10.0) { afterZ = 0.0; }
        state.post_dash_brake_nonce = state.action_nonce;
        this.ApplyVelocity(player, Vector(afterX, afterY, afterZ));
        this.Log("post_dash_brake ent=" + this.GetEntityIndexSafe(player).tostring() + " nonce=" + state.action_nonce.tostring() + " before_xy=" + beforeXY.tostring() + " after_xy=" + afterXY.tostring() + " reason=" + reason);
        return true;
    },

    function ApplyPostDashOverlapEscape(player, state, reason)
    {
        if (!this.Settings.post_dash_overlap_escape_enabled || state == null || state.action_nonce <= 0) { return false; }
        if (state.dash_common_passthrough_count <= 0 || state.dash_direction == null) { return false; }
        local impulse = this.Settings.post_dash_overlap_escape_impulse;
        this.ApplyVelocity(player, Vector(state.dash_direction.x * impulse, state.dash_direction.y * impulse, this.Settings.post_dash_overlap_escape_vertical));
        this.Log("post_dash_overlap_escape ent=" + this.GetEntityIndexSafe(player).tostring() + " nonce=" + state.action_nonce.tostring() + " reason=" + reason + " impulse=" + impulse.tostring());
        return true;
    },

    function ProcessCommonAOEPushForStep(player, state)
    {
        if (!this.Settings.common_aoe_push_enabled || state == null || state.action_nonce <= 0) { return 0; }
        if (state.dash_previous_origin == null || state.dash_current_origin == null) { return 0; }
        local mid = state.dash_current_origin;
        local targets = this.GetAllDamageTargetsNear(mid, this.Settings.common_aoe_push_radius + this.VectorLength(state.dash_current_origin - state.dash_previous_origin) + 32.0);
        local pushed = 0;
        foreach (target in targets)
        {
            if (pushed >= this.Settings.common_aoe_push_max_targets_per_step) { break; }
            if (this.GetTargetType(target) != "common") { continue; }
            local idx = this.GetEntityIndexSafe(target);
            if (idx < 0) { continue; }
            local key = state.action_nonce.tostring() + ":" + idx.tostring();
            if (this.Settings.common_aoe_push_once_per_nonce && key in state.common_aoe_pushed_targets) { continue; }
            local center = this.GetTargetCenter(target);
            if (center == null) { continue; }
            local dist = this.DistancePointToSegment(center, state.dash_previous_origin, state.dash_current_origin);
            if (dist > this.Settings.common_aoe_push_radius) { continue; }
            local away = this.NormalizeVector(Vector(center.x - state.dash_current_origin.x, center.y - state.dash_current_origin.y, 0.0));
            if (away == null && state.dash_direction != null) { away = Vector(state.dash_direction.x, state.dash_direction.y, 0.0); }
            if (away == null) { continue; }
            local horizontal = this.Settings.normal_dash_common_aoe_horizontal;
            local vertical = this.Settings.normal_dash_common_aoe_vertical;
            local mode = "normal";
            if (this.IsDashAttackMode(state))
            {
                horizontal = this.Settings.attack_dash_common_aoe_horizontal;
                vertical = this.Settings.attack_dash_common_aoe_vertical;
                mode = "attack";
            }
            this.ApplyVelocity(target, Vector(away.x * horizontal, away.y * horizontal, vertical));
            state.common_aoe_pushed_targets[key] <- true;
            pushed += 1;
        }
        if (pushed > 0 && state.common_aoe_push_logged_nonce != state.action_nonce)
        {
            state.common_aoe_push_logged_nonce = state.action_nonce;
            local modeText = "normal";
            if (this.IsDashAttackMode(state)) { modeText = "attack"; }
            this.Log("common_aoe_push nonce=" + state.action_nonce.tostring() + " mode=" + modeText + " targets=" + pushed.tostring() + " radius=" + this.Settings.common_aoe_push_radius.tostring());
        }
        return pushed;
    },

    function GetDashAreaStunDuration(targetType)
    {
        if (targetType == "common") { return this.Settings.dash_area_stun_common_duration; }
        if (targetType == "tank") { return this.Settings.dash_area_stun_tank_duration; }
        if (targetType == "witch") { return this.Settings.dash_area_stun_witch_duration; }
        return this.Settings.dash_area_stun_special_duration;
    },

    function GetDashAreaStunScale(targetType)
    {
        if (targetType == "common") { return this.Settings.dash_area_stun_common_movement_scale; }
        if (targetType == "tank") { return this.Settings.dash_area_stun_tank_movement_scale; }
        if (targetType == "witch") { return this.Settings.dash_area_stun_witch_movement_scale; }
        return this.Settings.dash_area_stun_special_movement_scale;
    },

    function GetDashAreaDedupKey(nonce, targetIndex)
    {
        return nonce.tostring() + ":" + targetIndex.tostring();
    },

    function SuppressAreaTargetVelocity(target, targetType)
    {
        if (!this.IsUsableEntity(target)) { return false; }
        local vx = this.ReadFloatProp(target, "m_vecVelocity[0]", 0.0);
        local vy = this.ReadFloatProp(target, "m_vecVelocity[1]", 0.0);
        local vz = this.ReadFloatProp(target, "m_vecVelocity[2]", 0.0);
        local scale = this.GetDashAreaStunScale(targetType);
        if (targetType == "tank" && this.Settings.tank_area_stun_zero_horizontal_velocity)
        {
            scale = 0.0;
        }
        return this.ApplyVelocity(target, Vector(vx * scale, vy * scale, vz));
    },

    function TryAreaStagger(attacker, target, targetType)
    {
        if (!this.IsUsableEntity(target)) { return false; }
        try
        {
            target.Stagger(attacker);
            return true;
        }
        catch (error) {}
        return false;
    },

    function TryPlayTankStaggerAnimation(tank, sourcePlayer, token, now)
    {
        if (!this.Settings.tank_stagger_animation_enabled || !this.IsUsableEntity(tank)) { return false; }
        local targetIndex = this.GetEntityIndexSafe(tank);
        if (targetIndex < 0) { return false; }
        local key = targetIndex.tostring();
        local previous = null;
        if (key in this.TankStaggerAnimationState) { previous = this.TankStaggerAnimationState[key]; }
        if (previous != null)
        {
            if (this.Settings.tank_stagger_animation_once_per_token && previous.token == token && previous.attempted) { return false; }
            if ((now - previous.last_at) < this.Settings.tank_stagger_animation_min_interval) { return false; }
        }

        local sourceIndex = this.GetEntityIndexSafe(sourcePlayer);
        local sourceOrigin = this.GetOriginSafe(sourcePlayer);
        if (sourceOrigin == null)
        {
            this.Log("[XNP GR STUN] tank_stagger_unavailable target=" + targetIndex.tostring() + " token=" + token.tostring());
            return false;
        }

        this.TankStaggerAnimationState[key] <-
        {
            token = token,
            last_at = now,
            attempted = true,
        };

        try
        {
            tank.Stagger(sourceOrigin);
            this.Log("[XNP GR STUN] tank_stagger_called target=" + targetIndex.tostring() + " token=" + token.tostring() + " source=" + sourceIndex.tostring());
            return true;
        }
        catch (error)
        {
            this.Log("[XNP GR STUN] tank_stagger_unavailable target=" + targetIndex.tostring() + " token=" + token.tostring());
        }
        return false;
    },

    function ApplyTankStunAttackLock(tank, stunUntil, token)
    {
        if (!this.Settings.tank_area_stun_attack_lock_enabled || !this.IsUsableEntity(tank)) { return false; }
        local playerProp = this.HasPropSafe(tank, "m_flNextAttack");
        local weapon = this.GetActiveWeapon(tank);
        local weaponPrimary = this.IsUsableEntity(weapon) && this.HasPropSafe(weapon, "m_flNextPrimaryAttack");
        local weaponSecondary = this.IsUsableEntity(weapon) && this.HasPropSafe(weapon, "m_flNextSecondaryAttack");
        local playerNext = 0.0;
        local weaponNext = 0.0;
        local applied = false;
        if (playerProp)
        {
            playerNext = this.ReadFloatProp(tank, "m_flNextAttack", 0.0);
            if (playerNext < stunUntil)
            {
                this.SetFloatProp(tank, "m_flNextAttack", stunUntil);
                playerNext = stunUntil;
                applied = true;
            }
        }
        if (weaponPrimary)
        {
            weaponNext = this.ReadFloatProp(weapon, "m_flNextPrimaryAttack", 0.0);
            if (weaponNext < stunUntil)
            {
                this.SetFloatProp(weapon, "m_flNextPrimaryAttack", stunUntil);
                weaponNext = stunUntil;
                applied = true;
            }
        }
        if (weaponSecondary)
        {
            local secondary = this.ReadFloatProp(weapon, "m_flNextSecondaryAttack", 0.0);
            if (secondary < stunUntil)
            {
                this.SetFloatProp(weapon, "m_flNextSecondaryAttack", stunUntil);
                secondary = stunUntil;
                applied = true;
            }
            if (secondary > weaponNext) { weaponNext = secondary; }
        }
        if (applied)
        {
            this.Log("[XNP GR STUN] tank_attack_lock_applied target=" + this.GetEntityIndexSafe(tank).tostring() + " token=" + token.tostring() + " player_next=" + playerNext.tostring() + " weapon_next=" + weaponNext.tostring());
        }
        else if (!playerProp && !weaponPrimary && !weaponSecondary)
        {
            this.Log("[XNP GR STUN] tank_attack_lock_unavailable target=" + this.GetEntityIndexSafe(tank).tostring() + " player_prop=false weapon_prop=false");
        }
        return applied;
    },

    function VerifyTankStunAttackLock(tank, stunUntil, token)
    {
        if (!this.Settings.tank_area_stun_attack_lock_verify || !this.IsUsableEntity(tank)) { return false; }
        local now = this.GetCurrentTime();
        local playerLocked = false;
        local weaponLocked = false;
        if (this.HasPropSafe(tank, "m_flNextAttack"))
        {
            playerLocked = this.ReadFloatProp(tank, "m_flNextAttack", 0.0) + 0.01 >= stunUntil;
        }
        local weapon = this.GetActiveWeapon(tank);
        if (this.IsUsableEntity(weapon))
        {
            if (this.HasPropSafe(weapon, "m_flNextPrimaryAttack")) { weaponLocked = weaponLocked || (this.ReadFloatProp(weapon, "m_flNextPrimaryAttack", 0.0) + 0.01 >= stunUntil); }
            if (this.HasPropSafe(weapon, "m_flNextSecondaryAttack")) { weaponLocked = weaponLocked || (this.ReadFloatProp(weapon, "m_flNextSecondaryAttack", 0.0) + 0.01 >= stunUntil); }
        }
        local locked = playerLocked || weaponLocked;
        if (locked)
        {
            this.Log("[XNP GR STUN] tank_attack_lock_verified target=" + this.GetEntityIndexSafe(tank).tostring() + " token=" + token.tostring() + " remaining=" + (stunUntil - now).tostring());
        }
        return locked;
    },

    function VerifyTankAreaStunEffect(controller, now)
    {
        if (controller == null || controller.target_type != "tank" || controller.verify_done) { return; }
        if (now < controller.verify_at) { return; }
        controller.verify_done = true;
        local target = controller.target;
        if (!this.IsUsableEntity(target)) { return; }
        local origin = this.GetOriginSafe(target);
        local displacement = 0.0;
        if (origin != null && controller.origin_at_start != null) { displacement = this.VectorLength(origin - controller.origin_at_start); }
        local vx = this.ReadFloatProp(target, "m_vecVelocity[0]", 0.0);
        local vy = this.ReadFloatProp(target, "m_vecVelocity[1]", 0.0);
        local horizontal = this.VectorLength(Vector(vx, vy, 0.0));
        local movementScale = this.ReadFloatProp(target, "m_flLaggedMovementValue", 1.0);
        local attackLock = this.VerifyTankStunAttackLock(target, controller.until, controller.token);
        local movementLow = controller.can_scale && movementScale <= (controller.written_scale + 0.02);
        if (movementLow && attackLock)
        {
            this.Log("[XNP GR STUN] tank_effect_verified target=" + controller.entindex.tostring() + " token=" + controller.token.tostring() + " movement_scale=" + movementScale.tostring() + " attack_lock=true displacement=" + displacement.tostring() + " horizontal_velocity=" + horizontal.tostring());
        }
        else
        {
            this.Log("[XNP GR STUN] TANK_STUN_EFFECT_FAILURE target=" + controller.entindex.tostring() + " token=" + controller.token.tostring() + " movement_scale=" + movementScale.tostring() + " attack_lock=" + attackLock.tostring());
        }
    },

    function StartAreaStunController(attacker, target, targetType, nonce, dashMode)
    {
        local index = this.GetEntityIndexSafe(target);
        if (index < 0) { return false; }
        local now = this.GetCurrentTime();
        local key = index.tostring();
        local duration = this.GetDashAreaStunDuration(targetType);
        local scale = this.GetDashAreaStunScale(targetType);
        local hadController = key in this.AreaStunControllers;
        local originalScale = 1.0;
        local canScale = this.HasPropSafe(target, "m_flLaggedMovementValue");
        if (hadController)
        {
            originalScale = this.AreaStunControllers[key].original_scale;
            canScale = this.AreaStunControllers[key].can_scale;
        }
        else if (canScale)
        {
            originalScale = this.ReadFloatProp(target, "m_flLaggedMovementValue", 1.0);
            if (originalScale <= 0.0) { originalScale = 1.0; }
        }
        local token = nonce;
        this.AreaStunControllers[key] <-
        {
            target = target,
            entindex = index,
            target_type = targetType,
            until = now + duration,
            token = token,
            original_scale = originalScale,
            written_scale = scale,
            can_scale = canScale,
            next_enforce = now,
            next_stagger = now,
            next_log = now,
            spark_next = now,
            spark_bursts = 0,
            stagger_animation_token = 0,
            stagger_animation_last_at = 0.0,
            stagger_animation_attempted = false,
            attacker = attacker,
            dash_mode = dashMode,
            origin_at_start = this.GetOriginSafe(target),
            verify_at = now + 0.35,
            verify_done = false,
            attack_lock_applied = false,
        };
        if (canScale)
        {
            this.SetFloatProp(target, "m_flLaggedMovementValue", scale);
        }
        else if (targetType == "tank")
        {
            this.Log("[XNP GR STUN] tank_scale_unavailable target=" + index.tostring());
        }
        if (targetType == "tank")
        {
            this.AreaStunControllers[key].attack_lock_applied = this.ApplyTankStunAttackLock(target, now + duration, token);
            local staggerPlayed = this.TryPlayTankStaggerAnimation(target, attacker, token, now);
            this.AreaStunControllers[key].stagger_animation_token = token;
            this.AreaStunControllers[key].stagger_animation_last_at = now;
            this.AreaStunControllers[key].stagger_animation_attempted = staggerPlayed;
            if (hadController) { this.Log("[XNP GR STUN] tank_refreshed target=" + index.tostring() + " nonce=" + nonce.tostring() + " until=" + (now + duration).tostring()); }
            else { this.Log("[XNP GR STUN] tank_started target=" + index.tostring() + " nonce=" + nonce.tostring() + " duration=" + duration.tostring()); }
        }
        else if (targetType == "witch")
        {
            this.Log("[XNP GR STUN] witch_applied target=" + index.tostring() + " nonce=" + nonce.tostring() + " duration=" + duration.tostring());
        }
        else if (targetType == "common")
        {
            this.Log("[XNP GR STUN] common_applied target=" + index.tostring() + " nonce=" + nonce.tostring());
        }
        else
        {
            this.Log("[XNP GR STUN] special_applied target=" + index.tostring() + " type=" + targetType + " nonce=" + nonce.tostring() + " duration=" + duration.tostring());
        }
        return true;
    },

    function RestoreAreaStunController(key, controller)
    {
        if (controller == null) { return; }
        local target = controller.target;
        if (this.IsUsableEntity(target) && controller.can_scale && this.HasPropSafe(target, "m_flLaggedMovementValue"))
        {
            local currentScale = this.ReadFloatProp(target, "m_flLaggedMovementValue", controller.original_scale);
            local low = controller.written_scale - 0.02;
            local high = controller.written_scale + 0.02;
            if (currentScale >= low && currentScale <= high)
            {
                this.SetFloatProp(target, "m_flLaggedMovementValue", controller.original_scale);
            }
        }
        if (controller.target_type == "tank")
        {
            this.Log("[XNP GR STUN] tank_restored target=" + controller.entindex.tostring() + " token=" + controller.token.tostring());
        }
        if (key in this.AreaStunControllers) { delete this.AreaStunControllers[key]; }
    },

    function SpawnTankStunSparkTrail(controller, now)
    {
        if (!this.Settings.tank_stun_spark_trail_enabled || controller == null || controller.target_type != "tank") { return false; }
        if (controller.spark_bursts >= this.Settings.tank_stun_spark_trail_max_bursts) { return false; }
        if (now < controller.spark_next) { return false; }
        local origin = this.GetTargetCenter(controller.target);
        if (origin == null) { return false; }
        local count = this.Settings.tank_stun_spark_trail_sparks_per_burst.tointeger();
        if (count < 1) { count = 1; }
        for (local i = 0; i < count; i += 1)
        {
            local name = this.MakeUniqueFxName("xnp_gr_tank_stun_spark", controller.entindex, controller.token, controller.spark_bursts.tostring() + "_" + i.tostring());
            local spark = null;
            try
            {
                spark = SpawnEntityFromTable("env_spark",
                {
                    targetname = name,
                    origin = origin + Vector((i * 6.0) - 3.0, 0.0, 10.0 + (i * 4.0)),
                    MaxDelay = "0",
                    Magnitude = "1",
                    TrailLength = "1",
                });
            }
            catch (error)
            {
                spark = null;
            }
            if (this.IsUsableEntity(spark))
            {
                try { DoEntFire(name, "SparkOnce", "", 0.0, controller.target, controller.target); } catch (error2) {}
                try { DoEntFire(name, "Kill", "", 0.12, null, null); } catch (error3) {}
            }
        }
        controller.spark_bursts += 1;
        controller.spark_next = now + this.Settings.tank_stun_spark_trail_interval;
        return true;
    },

    function EnforceAreaStunController(controller, now)
    {
        if (controller == null || !this.IsUsableEntity(controller.target)) { return; }
        local targetType = controller.target_type;
        local suppressVelocity = true;
        if (targetType == "tank")
        {
            local attackerState = this.GetPlayerState(controller.attacker);
            if (attackerState != null && attackerState.tank_knockback_grace_nonce == controller.token && now < attackerState.tank_knockback_velocity_grace_until)
            {
                suppressVelocity = false;
                if (!("grace_logged" in controller) || !controller.grace_logged)
                {
                    controller.grace_logged <- true;
                    local remaining = attackerState.tank_knockback_velocity_grace_until - now;
                    this.Log("[XNP GR KNOCKBACK] stun_zero_suppressed target=" + controller.entindex.tostring() + " nonce=" + controller.token.tostring() + " grace_remaining=" + remaining.tostring());
                }
            }
        }
        if (suppressVelocity)
        {
            this.SuppressAreaTargetVelocity(controller.target, targetType);
        }
        if (controller.can_scale && this.HasPropSafe(controller.target, "m_flLaggedMovementValue"))
        {
            this.SetFloatProp(controller.target, "m_flLaggedMovementValue", controller.written_scale);
        }
        if (targetType == "tank")
        {
            this.ApplyTankStunAttackLock(controller.target, controller.until, controller.token);
            this.VerifyTankAreaStunEffect(controller, now);
        }
        if (targetType == "tank") { this.SpawnTankStunSparkTrail(controller, now); }
        if (targetType != "tank")
        {
            this.TryAreaStagger(controller.attacker, controller.target, targetType);
        }
        if (targetType == "tank" && now >= controller.next_log)
        {
            this.Log("[XNP GR STUN] tank_enforced target=" + controller.entindex.tostring() + " token=" + controller.token.tostring() + " tick=" + now.tostring());
            controller.next_log = now + 0.40;
        }
        controller.next_enforce = now + this.Settings.tank_area_stun_enforcement_interval;
    },

    function MaintainAreaStunControllers(now)
    {
        local expired = [];
        foreach (key, controller in this.AreaStunControllers)
        {
            if (controller == null || !this.IsUsableEntity(controller.target))
            {
                expired.append(key);
                continue;
            }
            if (now >= controller.until)
            {
                expired.append(key);
                continue;
            }
            if (now >= controller.next_enforce)
            {
                this.EnforceAreaStunController(controller, now);
            }
        }
        foreach (key in expired)
        {
            if (key in this.AreaStunControllers)
            {
                this.RestoreAreaStunController(key, this.AreaStunControllers[key]);
            }
        }
    },

    function ClearAreaStunControllers(reason)
    {
        local keys = [];
        foreach (key, controller in this.AreaStunControllers) { keys.append(key); }
        foreach (key in keys)
        {
            if (key in this.AreaStunControllers)
            {
                this.RestoreAreaStunController(key, this.AreaStunControllers[key]);
            }
        }
        this.AreaStunControllers = {};
        this.TankStaggerAnimationState = {};
    },

    function ApplyDashAreaStun(attacker, target, targetType, nonce, dashMode)
    {
        if (!this.IsUsableEntity(attacker) || !this.IsUsableEntity(target)) { return false; }
        if (targetType == "invalid") { return false; }
        if (targetType != "tank") { this.TryAreaStagger(attacker, target, targetType); }
        this.SuppressAreaTargetVelocity(target, targetType);
        this.StartAreaStunController(attacker, target, targetType, nonce, dashMode);
        return true;
    },

    function GetDashSkillFxSparkCount(targetType, dashMode)
    {
        if (targetType == "tank") { return this.Settings.tank_fx_spark_count.tointeger(); }
        if (targetType == "witch") { return this.Settings.witch_fx_spark_count.tointeger(); }
        if (dashMode == "attack") { return this.Settings.attack_dash_fx_spark_count.tointeger(); }
        return this.Settings.normal_dash_fx_spark_count.tointeger();
    },

    function GetDashSkillFxScale(targetType, dashMode)
    {
        if (targetType == "tank") { return this.Settings.tank_dash_skill_fx_scale; }
        if (targetType == "witch") { return this.Settings.witch_dash_skill_fx_scale; }
        if (dashMode == "attack") { return this.Settings.attack_dash_skill_fx_scale; }
        return this.Settings.normal_dash_skill_fx_scale;
    },

    function MakeUniqueFxName(prefix, targetIndex, nonce, suffix)
    {
        return prefix + "_" + nonce.tostring() + "_" + targetIndex.tostring() + "_" + suffix + "_" + (this.GetCurrentTime() * 1000.0).tointeger().tostring();
    },

    function PlayDashSkillImpactFX(attacker, target, targetType, nonce, dashMode)
    {
        if (!this.Settings.dash_skill_fx_enabled) { return false; }
        if (dashMode != "normal" && dashMode != "attack") { return false; }
        if (!this.IsQualifiedSkillFxTarget(target)) { return false; }
        local targetIndex = this.GetEntityIndexSafe(target);
        if (targetIndex < 0) { return false; }
        local origin = this.GetTargetCenter(target);
        if (origin == null) { origin = this.GetOriginSafe(target); }
        if (origin == null) { return false; }
        local scale = this.GetDashSkillFxScale(targetType, dashMode);
        local sparkCount = this.GetDashSkillFxSparkCount(targetType, dashMode);
        local sparkMade = 0;
        if (this.Settings.dash_skill_fx_use_sparks)
        {
            local offsets =
            [
                Vector(-10.0, 0.0, 12.0),
                Vector(10.0, 0.0, 15.0),
                Vector(0.0, -10.0, 18.0),
                Vector(0.0, 10.0, 21.0),
                Vector(-8.0, 8.0, 24.0),
                Vector(8.0, -8.0, 27.0),
                Vector(-12.0, -6.0, 30.0),
                Vector(12.0, 6.0, 33.0),
                Vector(-6.0, 12.0, 36.0),
                Vector(6.0, -12.0, 39.0)
            ];
            for (local i = 0; i < sparkCount; i += 1)
            {
                local name = this.MakeUniqueFxName("xnp_gr_skill_spark", targetIndex, nonce, i.tostring());
                local spark = null;
                local offset = offsets[i % offsets.len()];
                try
                {
                    spark = SpawnEntityFromTable("env_spark",
                    {
                        targetname = name,
                        origin = origin + Vector(offset.x * scale, offset.y * scale, offset.z),
                        MaxDelay = "0",
                        Magnitude = "2",
                        TrailLength = "2",
                    });
                }
                catch (error)
                {
                    spark = null;
                }
                if (!this.IsUsableEntity(spark)) { continue; }
                try { DoEntFire(name, "SparkOnce", "", 0.0, target, target); } catch (error2) {}
                try { DoEntFire(name, "Kill", "", 0.20, null, null); } catch (error3) {}
                sparkMade += 1;
            }
            this.Log("[XNP GR FX] spark_bundle_created target=" + targetIndex.tostring() + " sparks=" + sparkMade.tostring());
        }
        if (this.Settings.dash_skill_fx_use_light_flash)
        {
            local lightName = this.MakeUniqueFxName("xnp_gr_skill_light", targetIndex, nonce, "flash");
            local light = null;
            try
            {
                light = SpawnEntityFromTable("light_dynamic",
                {
                    targetname = lightName,
                    origin = origin,
                    _light = "255 220 96 255",
                    brightness = "4",
                    distance = (160.0 * scale).tostring(),
                    style = "0",
                });
            }
            catch (error4)
            {
                light = null;
            }
            if (this.IsUsableEntity(light))
            {
                try { DoEntFire(lightName, "TurnOn", "", 0.0, target, target); } catch (error5) {}
                try { DoEntFire(lightName, "Kill", "", 0.16, null, null); } catch (error6) {}
                this.Log("[XNP GR FX] light_flash_created target=" + targetIndex.tostring());
            }
        }
        if (this.Settings.dash_skill_fx_use_particle_secondary)
        {
            try { DispatchParticleEffect("weapon_pipebomb", origin, Vector(0, 0, 0)); } catch (error7) {}
        }
        if (this.Settings.dash_skill_fx_use_sound)
        {
            try
            {
                EmitSoundOn("BaseGrenade.Explode", target);
                this.Log("[XNP GR FX] sound_played target=" + targetIndex.tostring());
            }
            catch (error8) {}
        }
        local cleanupKey = nonce.tostring() + ":" + targetIndex.tostring();
        this.AreaFxCleanup[cleanupKey] <- { target = targetIndex, nonce = nonce, due = this.GetCurrentTime() + 0.30 };
        this.Log("[XNP GR FX] skill_impact target=" + targetIndex.tostring() + " type=" + targetType + " nonce=" + nonce.tostring() + " mode=" + dashMode);
        return true;
    },

    function MaintainDashSkillFxCleanup(now)
    {
        local done = [];
        foreach (key, data in this.AreaFxCleanup)
        {
            if (data == null || now >= data.due)
            {
                done.append(key);
            }
        }
        foreach (key in done)
        {
            if (key in this.AreaFxCleanup)
            {
                local data = this.AreaFxCleanup[key];
                this.Log("[XNP GR FX] cleanup_complete target=" + data.target.tostring() + " nonce=" + data.nonce.tostring());
                delete this.AreaFxCleanup[key];
            }
        }
    },

    function ProcessDashAreaPulse(player, state, nonce, dashMode)
    {
        if (!this.Settings.dash_area_stun_enabled) { return 0; }
        if (state == null || state.state_name != this.STATE_AIR_DASH || nonce <= 0) { return 0; }
        local now = this.GetCurrentTime();
        if (state.last_area_stun_scan_time > 0.0 && (now - state.last_area_stun_scan_time) < this.Settings.dash_area_stun_scan_interval) { return 0; }
        state.last_area_stun_scan_time = now;
        local current = state.dash_current_origin;
        if (current == null) { current = this.GetOriginSafe(player); }
        if (current == null) { return 0; }
        local previous = state.dash_previous_origin;
        if (previous == null) { previous = current; }
        local stepLength = this.VectorLength(current - previous);
        local searchRadius = this.Settings.dash_area_stun_radius + stepLength + 32.0;
        local targets = this.GetAllDamageTargetsNear(current, searchRadius);
        local scanned = 0;
        local affected = 0;
        foreach (target in targets)
        {
            if (affected >= this.Settings.dash_area_stun_max_targets_per_scan) { break; }
            local targetType = this.GetDashAreaTargetType(target);
            if (targetType == "invalid") { continue; }
            local targetIndex = this.GetEntityIndexSafe(target);
            if (targetIndex < 0) { continue; }
            scanned += 1;
            local key = this.GetDashAreaDedupKey(nonce, targetIndex);
            if (this.Settings.dash_area_stun_once_per_target_per_nonce && key in state.area_stun_hit_targets) { continue; }
            local center = this.GetTargetCenter(target);
            if (center == null) { continue; }
            local distance = this.DistancePointToSegment(center, previous, current);
            if (distance > this.Settings.dash_area_stun_radius) { continue; }
            if (this.Settings.dash_area_stun_requires_line_of_sight)
            {
                if (this.GRTraceBlockedByStaticWorld(current + Vector(0.0, 0.0, 32.0), center, player, target)) { continue; }
            }
            local stunApplied = this.ApplyDashAreaStun(player, target, targetType, nonce, dashMode);
            state.area_stun_hit_targets[key] <- true;
            state.area_stun_target_count += 1;
            if (targetType == "common") { state.area_stun_common_count += 1; }
            else { state.area_stun_special_count += 1; }
            this.Log("[XNP GR AREA] target_applied target=" + targetIndex.tostring() + " type=" + targetType + " nonce=" + nonce.tostring() + " mode=" + dashMode + " stun=" + stunApplied.tostring());
            if (this.IsQualifiedSkillFxTarget(target))
            {
                this.PlayDashSkillImpactFX(player, target, targetType, nonce, dashMode);
            }
            if (targetType == "tank")
            {
                this.ApplyTankAreaKnockback(player, target, state, nonce, dashMode);
            }
            affected += 1;
        }
        if (affected > 0 && state.area_stun_logged_nonce != nonce)
        {
            state.area_stun_logged_nonce = nonce;
            this.Log("[XNP GR AREA] pulse nonce=" + nonce.tostring() + " mode=" + dashMode + " scanned=" + scanned.tostring() + " affected=" + affected.tostring());
        }
        return affected;
    },

    function TryApplyDashWallSlide(player, state)
    {
        if (!this.Settings.dash_wall_slide_enabled || state == null || state.dash_direction == null || state.last_world_trace_normal == null) { return false; }
        local normal = state.last_world_trace_normal;
        if (normal.z > this.Settings.dash_wall_normal_z_threshold || normal.z < -this.Settings.dash_wall_normal_z_threshold) { return false; }
        local dot = this.DotProduct(state.dash_direction, normal);
        local tangent = Vector(state.dash_direction.x - normal.x * dot, state.dash_direction.y - normal.y * dot, state.dash_direction.z - normal.z * dot);
        tangent = this.NormalizeVector(tangent);
        if (tangent == null) { return false; }
        local speed = this.Settings.dash_speed * this.Settings.dash_wall_slide_tangent_scale;
        if (speed > this.Settings.dash_wall_slide_max_speed) { speed = this.Settings.dash_wall_slide_max_speed; }
        this.ApplyVelocity(player, Vector(tangent.x * speed, tangent.y * speed, tangent.z * speed));
        this.Log("dash_wall_slide nonce=" + state.action_nonce.tostring() + " speed=" + speed.tostring() + " normal_z=" + normal.z.tostring());
        return true;
    },

    function ApplyDamageToTarget(target, attacker, damage)
    {
        if (!this.IsAllowedDamageTarget(target) || damage <= 0.0) { return false; }
        this.MarkInternalDamage(attacker, target);
        try { target.TakeDamage(damage, 4, attacker); return true; } catch (error) {}
        try { target.TakeDamageEx(attacker, attacker, null, Vector(0, 0, 0), this.GetOriginSafe(target), damage, 4); return true; } catch (error2) {}
        return false;
    },

    function MarkInternalDamage(attacker, target)
    {
        local key = this.GetEntityIndexSafe(attacker).tostring() + ":" + this.GetEntityIndexSafe(target).tostring();
        this.InternalDamageIgnore[key] <- this.GetCurrentTime() + 0.35;
    },

    function IsMarkedInternalDamage(attacker, target)
    {
        local key = this.GetEntityIndexSafe(attacker).tostring() + ":" + this.GetEntityIndexSafe(target).tostring();
        if (!(key in this.InternalDamageIgnore)) { return false; }
        if (this.GetCurrentTime() > this.InternalDamageIgnore[key])
        {
            delete this.InternalDamageIgnore[key];
            return false;
        }
        return true;
    },

    function ApplyKnockback(target, direction)
    {
        local t = this.GetTargetType(target);
        if (t == "tank")
        {
            return false;
        }
        if (t == "witch")
        {
            return false;
        }
        if (direction == null) { return false; }
        local velocity = Vector(direction.x * this.Settings.knockback_force, direction.y * this.Settings.knockback_force, 180.0);
        return this.ApplyVelocity(target, velocity);
    },

    function LogTankKnockbackFailure(state, reason)
    {
        if (state != null)
        {
            if (reason in state.tank_knockback_failed_reasons) { return; }
            state.tank_knockback_failed_reasons[reason] <- true;
        }
        this.Log("tank_knockback_failed reason=" + reason);
    },

    function ClearTankImpactState(state)
    {
        if (state == null) { return; }
        state.tank_impact_target = null;
        state.tank_impact_target_entindex = -1;
        state.tank_impact_nonce = 0;
        state.tank_impact_until = 0.0;
        state.tank_impact_direction = null;
        state.tank_impact_origin = null;
        state.tank_impact_verify_time = 0.0;
        state.tank_impact_verified = false;
        state.tank_impact_stun_attempted = false;
        state.tank_impact_failure_logged = false;
    },

    function TryTankStunFallback(target, player)
    {
        if (!this.Settings.tank_stun_fallback_enabled || !this.IsUsableEntity(target)) { return false; }
        local origin = this.GetOriginSafe(player);
        if (origin == null) { origin = this.GetOriginSafe(target); }
        try
        {
            if ("Stagger" in target)
            {
                target.Stagger(origin);
                return true;
            }
        }
        catch (error) {}
        try
        {
            if ("Stagger" in target && player != null)
            {
                target.Stagger(player);
                return true;
            }
        }
        catch (error2) {}
        return false;
    },

    function ApplyTankKnockbackOnce(target, player, state)
    {
        if (!this.Settings.tank_knockback_enabled) { return false; }
        if (this.GetTargetType(target) != "tank") { return false; }
        if (state == null || state.action_nonce <= 0) { return false; }
        if (state.dash_trigger_source != "attack") { return false; }
        if (this.Settings.tank_knockback_once_per_dash && state.tank_knockback_nonce == state.action_nonce) { return false; }
        local direction = null;
        local playerOrigin = this.GetOriginSafe(player);
        local targetOrigin = this.GetOriginSafe(target);
        if (playerOrigin != null && targetOrigin != null)
        {
            direction = this.NormalizeVector(Vector(targetOrigin.x - playerOrigin.x, targetOrigin.y - playerOrigin.y, 0.0));
        }
        if (direction == null)
        {
            direction = state.dash_direction;
        }
        if (direction == null)
        {
            this.LogTankKnockbackFailure(state, "invalid_direction");
            return false;
        }
        local velocity = Vector(direction.x * this.Settings.tank_knockback_horizontal, direction.y * this.Settings.tank_knockback_horizontal, this.Settings.tank_knockback_vertical);
        if (!this.ApplyVelocity(target, velocity))
        {
            this.LogTankKnockbackFailure(state, "velocity_interface_failed");
            return false;
        }
        state.tank_knockback_nonce = state.action_nonce;
        state.tank_impact_target = target;
        state.tank_impact_target_entindex = this.GetEntityIndexSafe(target);
        state.tank_impact_nonce = state.action_nonce;
        state.tank_impact_until = this.GetCurrentTime() + this.Settings.tank_impact_duration;
        state.tank_impact_direction = direction;
        state.tank_impact_origin = this.GetOriginSafe(target);
        state.tank_impact_verify_time = this.GetCurrentTime() + this.Settings.tank_knockback_verify_delay;
        state.tank_impact_verified = false;
        state.tank_impact_verify_retry_done = false;
        state.tank_impact_stun_attempted = false;
        state.tank_impact_failure_logged = false;
        this.Log("tank_knockback_attempted target=" + this.GetEntityIndexSafe(target).tostring() + " nonce=" + state.action_nonce.tostring() + " horizontal=" + this.Settings.tank_knockback_horizontal.tostring() + " vertical=" + this.Settings.tank_knockback_vertical.tostring() + " verify_delay=" + this.Settings.tank_knockback_verify_delay.tostring());
        return true;
    },

    function ApplyTankStun(target, player, state)
    {
        if (!this.Settings.tank_stun_enabled || this.GetTargetType(target) != "tank") { return false; }
        if (state == null) { return false; }
        local currentScale = this.ReadFloatProp(target, "m_flLaggedMovementValue", 1.0);
        if (currentScale <= 0.0) { currentScale = 1.0; }
        state.tank_stun_target = target;
        state.tank_stun_target_entindex = this.GetEntityIndexSafe(target);
        state.tank_stun_until = this.GetCurrentTime() + this.Settings.tank_stun_duration;
        state.tank_stun_token += 1;
        state.tank_stun_verify_time = this.GetCurrentTime() + 0.05;
        state.tank_stun_verified = false;
        if (state.tank_stun_original_speed <= 0.0 || this.Settings.tank_stun_refresh_on_hit)
        {
            state.tank_stun_original_speed = currentScale;
        }
        state.tank_stun_restore_logged = false;
        this.SetFloatProp(target, "m_flLaggedMovementValue", this.Settings.tank_stun_movement_scale);
        try { target.Stagger(player); } catch (error) {}
        this.Log("tank_stun_started target=" + state.tank_stun_target_entindex.tostring() + " nonce=" + state.action_nonce.tostring() + " duration=" + this.Settings.tank_stun_duration.tostring());
        return true;
    },

    function MaintainTankStun(state)
    {
        if (state == null || state.tank_stun_target_entindex < 0 || state.tank_stun_until <= 0.0) { return; }
        local now = this.GetCurrentTime();
        local target = state.tank_stun_target;
        if (!state.tank_stun_verified && now >= state.tank_stun_verify_time && this.IsUsableEntity(target))
        {
            state.tank_stun_verified = true;
            local speed = this.ReadFloatProp(target, "m_flLaggedMovementValue", 1.0);
            if (speed <= (this.Settings.tank_stun_movement_scale + 0.01))
            {
                this.Log("tank_stun_verified target=" + state.tank_stun_target_entindex.tostring() + " nonce=" + state.tank_impact_nonce.tostring() + " speed=" + speed.tostring());
            }
            else
            {
                this.Log("TANK_STUN_VERIFY_FAILURE target=" + state.tank_stun_target_entindex.tostring() + " nonce=" + state.tank_impact_nonce.tostring() + " speed=" + speed.tostring());
            }
        }
        if (now < state.tank_stun_until) { return; }
        if (this.IsUsableEntity(target) && this.GetEntityIndexSafe(target) == state.tank_stun_target_entindex)
        {
            this.SetFloatProp(target, "m_flLaggedMovementValue", state.tank_stun_original_speed);
        }
        if (!state.tank_stun_restore_logged)
        {
            state.tank_stun_restore_logged = true;
            this.Log("tank_stun_restored target=" + state.tank_stun_target_entindex.tostring() + " token=" + state.tank_stun_token.tostring());
        }
        state.tank_stun_target = null;
        state.tank_stun_target_entindex = -1;
        state.tank_stun_until = 0.0;
        state.tank_stun_original_speed = 1.0;
    },

    function ApplyTankPlayerRecoil(player, tank, state)
    {
        if (!this.Settings.tank_player_recoil_enabled || state == null || state.action_nonce <= 0) { return false; }
        if (state.tank_recoil_nonce == state.action_nonce) { return false; }
        local playerOrigin = this.GetOriginSafe(player);
        local tankOrigin = this.GetOriginSafe(tank);
        if (playerOrigin == null || tankOrigin == null) { return false; }
        local direction = this.NormalizeVector(Vector(playerOrigin.x - tankOrigin.x, playerOrigin.y - tankOrigin.y, 0.0));
        if (direction == null && state.dash_direction != null)
        {
            direction = Vector(-state.dash_direction.x, -state.dash_direction.y, 0.0);
        }
        if (direction == null) { direction = Vector(-1.0, 0.0, 0.0); }
        local horizontal = this.Settings.tank_player_recoil_horizontal;
        if (horizontal > this.Settings.tank_player_recoil_max_speed) { horizontal = this.Settings.tank_player_recoil_max_speed; }
        state.tank_recoil_nonce = state.action_nonce;
        this.ApplyVelocity(player, Vector(direction.x * horizontal, direction.y * horizontal, this.Settings.tank_player_recoil_vertical));
        state.tank_player_recoil_verify_nonce = state.action_nonce;
        state.tank_player_recoil_verify_time = this.GetCurrentTime() + this.Settings.tank_player_recoil_verify_delay;
        state.tank_player_recoil_verify_origin = playerOrigin;
        state.tank_player_recoil_direction = direction;
        state.tank_player_recoil_verify_target_entindex = this.GetEntityIndexSafe(tank);
        state.tank_player_recoil_verify_logged = false;
        state.tank_player_recoil_retry_done = false;
        local distance = 0.0;
        if (playerOrigin != null && tankOrigin != null) { distance = this.VectorLength(Vector(playerOrigin.x - tankOrigin.x, playerOrigin.y - tankOrigin.y, 0.0)); }
        this.Log("tank_player_recoil_applied attacker=" + this.GetEntityIndexSafe(player).tostring() + " target=" + this.GetEntityIndexSafe(tank).tostring() + " nonce=" + state.action_nonce.tostring() + " speed=" + horizontal.tostring() + " contact_distance=" + distance.tostring() + " vertical=" + this.Settings.tank_player_recoil_vertical.tostring());
        return true;
    },

    function ProcessTankPlayerRecoilVerify(player, state, now)
    {
        if (state == null || state.tank_player_recoil_verify_logged) { return; }
        if (state.tank_player_recoil_verify_nonce <= 0 || state.tank_player_recoil_verify_time <= 0.0) { return; }
        if (now < state.tank_player_recoil_verify_time) { return; }
        local origin = this.GetOriginSafe(player);
        local displacement = 0.0;
        if (origin != null && state.tank_player_recoil_verify_origin != null)
        {
            displacement = this.VectorLength(Vector(origin.x - state.tank_player_recoil_verify_origin.x, origin.y - state.tank_player_recoil_verify_origin.y, 0.0));
        }
        state.tank_player_recoil_verify_logged = true;
        if (displacement >= this.Settings.tank_player_recoil_min_displacement)
        {
            this.Log("tank_player_recoil_verified attacker=" + this.GetEntityIndexSafe(player).tostring() + " target=" + state.tank_player_recoil_verify_target_entindex.tostring() + " nonce=" + state.tank_player_recoil_verify_nonce.tostring() + " displacement=" + displacement.tostring());
            return;
        }
        if (!state.tank_player_recoil_retry_done && state.tank_player_recoil_direction != null)
        {
            state.tank_player_recoil_retry_done = true;
            state.tank_player_recoil_verify_logged = false;
            state.tank_player_recoil_verify_origin = origin;
            state.tank_player_recoil_verify_time = now + this.Settings.tank_player_recoil_verify_delay;
            local speed = this.Settings.tank_player_recoil_horizontal * 0.65;
            if (speed > this.Settings.tank_player_recoil_max_speed) { speed = this.Settings.tank_player_recoil_max_speed; }
            this.ApplyVelocity(player, Vector(state.tank_player_recoil_direction.x * speed, state.tank_player_recoil_direction.y * speed, this.Settings.tank_player_recoil_vertical * 0.65));
            this.Log("tank_player_recoil_retry attacker=" + this.GetEntityIndexSafe(player).tostring() + " target=" + state.tank_player_recoil_verify_target_entindex.tostring() + " nonce=" + state.tank_player_recoil_verify_nonce.tostring() + " displacement=" + displacement.tostring());
            return;
        }
        this.Log("TANK_PLAYER_RECOIL_VERIFY_FAILURE attacker=" + this.GetEntityIndexSafe(player).tostring() + " target=" + state.tank_player_recoil_verify_target_entindex.tostring() + " nonce=" + state.tank_player_recoil_verify_nonce.tostring() + " displacement=" + displacement.tostring());
    },

    function ClearPendingTankTarget(state)
    {
        if (state == null) { return; }
        state.pending_tank_target = null;
        state.pending_tank_entindex = -1;
        state.pending_tank_nonce = 0;
        state.pending_tank_detected_at = 0.0;
        state.pending_tank_initial_distance = 0.0;
        state.pending_tank_native_melee_hint = false;
        state.pending_tank_native_melee_entindex = -1;
        state.pending_tank_contact_method = "";
        state.pending_tank_contact_surface_gap = 99999.0;
    },

    function ArmAttackDashInputContext(player, state)
    {
        if (state == null || state.action_nonce <= 0 || !this.IsDashAttackMode(state)) { return; }
        local now = this.GetCurrentTime();
        state.attack_dash_input_context_active = true;
        state.attack_dash_input_context_nonce = state.action_nonce;
        state.attack_dash_input_context_started_at = now;
        state.attack_dash_input_context_expires_at = now + this.Settings.attack_dash_active_context_seconds;
        state.attack_dash_input_context_attack_serial = state.melee_attack_serial;
        state.attack_dash_context_attacker_entindex = this.GetEntityIndexSafe(player);
        state.attack_dash_context_dash_started_at = now;
        state.attack_dash_context_dash_ended_at = 0.0;
        state.attack_dash_context_recent_until = 0.0;
        state.attack_dash_context_dash_start_origin = state.dash_start_origin;
        state.attack_dash_context_dash_last_origin = state.dash_current_origin;
        state.attack_dash_context_dash_direction = state.dash_direction;
        state.attack_dash_context_dash_travelled = state.dash_travelled_distance;
        state.attack_dash_context_pending_tank = state.pending_tank_target;
        state.attack_dash_context_pending_tank_entindex = state.pending_tank_entindex;
        state.attack_dash_context_resolved_targets = {};
        state.attack_dash_input_context_logged_targets = {};
    },

    function PreserveRecentAttackDashContext(player, state, reason)
    {
        if (state == null || state.attack_dash_input_context_nonce <= 0) { return; }
        if (state.dash_trigger_source != "attack" && state.dash_mode != "attack") { return; }
        local now = this.GetCurrentTime();
        state.attack_dash_input_context_active = false;
        state.attack_dash_context_dash_ended_at = now;
        state.attack_dash_context_recent_until = now + this.Settings.attack_dash_post_end_context_seconds;
        state.attack_dash_context_dash_last_origin = state.dash_current_origin;
        state.attack_dash_context_dash_travelled = state.dash_travelled_distance;
        state.attack_dash_context_pending_tank = state.pending_tank_target;
        state.attack_dash_context_pending_tank_entindex = state.pending_tank_entindex;
        this.Log("attack_dash_recent_context_armed attacker=" + this.GetEntityIndexSafe(player).tostring() + " nonce=" + state.attack_dash_input_context_nonce.tostring() + " reason=" + reason + " recent_until=" + state.attack_dash_context_recent_until.tostring());
    },

    function ClearAttackDashInputContext(state)
    {
        if (state == null) { return; }
        state.attack_dash_input_context_active = false;
        state.attack_dash_input_context_nonce = 0;
        state.attack_dash_input_context_started_at = 0.0;
        state.attack_dash_input_context_expires_at = 0.0;
        state.attack_dash_input_context_attack_serial = 0;
        state.attack_dash_context_attacker_entindex = -1;
        state.attack_dash_context_dash_started_at = 0.0;
        state.attack_dash_context_dash_ended_at = 0.0;
        state.attack_dash_context_recent_until = 0.0;
        state.attack_dash_context_dash_start_origin = null;
        state.attack_dash_context_dash_last_origin = null;
        state.attack_dash_context_dash_direction = null;
        state.attack_dash_context_dash_travelled = 0.0;
        state.attack_dash_context_pending_tank = null;
        state.attack_dash_context_pending_tank_entindex = -1;
        state.attack_dash_context_resolved_targets = {};
        state.attack_dash_input_context_logged_targets = {};
    },

    function IsNativeMeleeEventFromAttackDashContext(attacker, victim, state, damageAmount)
    {
        if (state == null || state.attack_dash_input_context_nonce <= 0) { return false; }
        if (!this.IsEligibleSurvivor(attacker) || !this.IsUsableEntity(victim)) { return false; }
        local now = this.GetCurrentTime();
        local phase = "";
        if (state.attack_dash_input_context_active && now <= state.attack_dash_input_context_expires_at)
        {
            phase = "active";
        }
        else if (!state.attack_dash_input_context_active && now <= state.attack_dash_context_recent_until)
        {
            phase = "recent";
        }
        else
        {
            this.ClearAttackDashInputContext(state);
            return false;
        }
        if (state.attack_dash_context_attacker_entindex != this.GetEntityIndexSafe(attacker)) { return false; }
        if (state.attack_dash_input_context_attack_serial > 0 && state.melee_attack_serial > 0 && state.melee_attack_serial > (state.attack_dash_input_context_attack_serial + 1)) { return false; }
        local victimIndex = this.GetEntityIndexSafe(victim);
        local resolvedKey = state.attack_dash_input_context_nonce.tostring() + ":" + victimIndex.tostring();
        if (resolvedKey in state.attack_dash_context_resolved_targets) { return true; }
        local logKey = state.attack_dash_input_context_nonce.tostring() + ":" + victimIndex.tostring();
        local timeDelta = now - state.attack_dash_input_context_started_at;
        if (!(logKey in state.attack_dash_input_context_logged_targets))
        {
            state.attack_dash_input_context_logged_targets[logKey] <- true;
            this.Log("native_melee_event_routed_to_attack_dash attacker=" + this.GetEntityIndexSafe(attacker).tostring() + " target=" + victimIndex.tostring() + " nonce=" + state.attack_dash_input_context_nonce.tostring() + " phase=" + phase + " time_delta=" + timeDelta.tostring());
        }
        if (this.GetTargetType(victim) == "tank")
        {
            state.pending_tank_native_melee_hint = true;
            state.pending_tank_native_melee_entindex = victimIndex;
            this.RegisterTankCandidate(attacker, victim, state, phase + "_melee_hint");
            if (phase == "active") { this.TryConfirmPendingTankContact(attacker, state); }
            else { this.HandleLateConfirmedTankDashImpact(attacker, victim, state, state.attack_dash_input_context_nonce, damageAmount); }
        }
        if (!(resolvedKey in state.attack_dash_context_resolved_targets))
        {
            state.attack_dash_context_resolved_targets[resolvedKey] <- true;
        }
        return true;
    },

    function GetActiveOrRecentDashNonce(state)
    {
        if (state == null) { return 0; }
        if (state.action_nonce > 0) { return state.action_nonce; }
        return state.attack_dash_input_context_nonce;
    },

    function RegisterTankCandidate(player, tank, state, method)
    {
        local nonce = this.GetActiveOrRecentDashNonce(state);
        if (state == null || nonce <= 0 || !this.IsUsableEntity(tank) || this.GetTargetType(tank) != "tank") { return false; }
        if (!this.IsDashAttackMode(state) && state.attack_dash_input_context_nonce != nonce) { return false; }
        local playerOrigin = this.GetOriginSafe(player);
        local tankOrigin = this.GetOriginSafe(tank);
        if (playerOrigin == null || tankOrigin == null) { return false; }
        if (this.Settings.tank_attack_contact_requires_line_of_sight && !this.GRTraceVisible(playerOrigin + Vector(0, 0, 32), tankOrigin + Vector(0, 0, 32), player)) { return false; }
        local candidateDirection = state.dash_direction;
        if (candidateDirection == null) { candidateDirection = state.attack_dash_context_dash_direction; }
        if (this.Settings.tank_attack_contact_requires_forward_cone && candidateDirection != null)
        {
            local toTank = this.NormalizeVector(Vector(tankOrigin.x - playerOrigin.x, tankOrigin.y - playerOrigin.y, 0.0));
            if (toTank == null) { return false; }
            if (this.DotProduct(candidateDirection, toTank) < this.Settings.tank_attack_contact_forward_dot) { return false; }
        }
        local idx = this.GetEntityIndexSafe(tank);
        local distance = this.VectorLength(Vector(playerOrigin.x - tankOrigin.x, playerOrigin.y - tankOrigin.y, 0.0));
        state.pending_tank_target = tank;
        state.pending_tank_entindex = idx;
        state.pending_tank_nonce = nonce;
        state.pending_tank_detected_at = this.GetCurrentTime();
        state.pending_tank_initial_distance = distance;
        if (state.pending_tank_candidate_log_nonce != nonce)
        {
            state.pending_tank_candidate_log_nonce = nonce;
            this.Log("tank_candidate_detected target=" + idx.tostring() + " nonce=" + nonce.tostring() + " method=" + method + " distance=" + distance.tostring());
        }
        return true;
    },

    function GetTankContactDistance(player, tank)
    {
        local playerOrigin = this.GetOriginSafe(player);
        local tankOrigin = this.GetOriginSafe(tank);
        if (playerOrigin == null || tankOrigin == null) { return 99999.0; }
        return this.VectorLength(Vector(playerOrigin.x - tankOrigin.x, playerOrigin.y - tankOrigin.y, 0.0));
    },

    function GetPointSegmentDistance2D(point, startPos, endPos)
    {
        if (point == null || startPos == null || endPos == null) { return 99999.0; }
        local sx = startPos.x;
        local sy = startPos.y;
        local ex = endPos.x;
        local ey = endPos.y;
        local dx = ex - sx;
        local dy = ey - sy;
        local lenSq = dx * dx + dy * dy;
        if (lenSq <= 0.01)
        {
            return this.VectorLength(Vector(point.x - sx, point.y - sy, 0.0));
        }
        local t = ((point.x - sx) * dx + (point.y - sy) * dy) / lenSq;
        if (t < 0.0) { t = 0.0; }
        if (t > 1.0) { t = 1.0; }
        local px = sx + dx * t;
        local py = sy + dy * t;
        return this.VectorLength(Vector(point.x - px, point.y - py, 0.0));
    },

    function GetTankContactInfo(player, tank, state)
    {
        local info = { ok = false, method = "none", center_distance = 99999.0, surface_gap = 99999.0, travelled = 0.0 };
        if (!this.Settings.tank_attack_contact_enabled)
        {
            info.ok = true;
            info.method = "disabled";
            return info;
        }
        local nonce = this.GetActiveOrRecentDashNonce(state);
        if (state == null || nonce <= 0 || state.pending_tank_nonce != nonce) { return info; }
        if ((!this.IsDashAttackMode(state) && state.attack_dash_input_context_nonce != nonce) || this.GetTargetType(tank) != "tank") { return info; }
        local distance = this.GetTankContactDistance(player, tank);
        info.center_distance = distance;
        info.travelled = state.dash_travelled_distance;
        if (info.travelled <= 0.0) { info.travelled = state.attack_dash_context_dash_travelled; }
        local recentPhase = (!state.attack_dash_input_context_active && state.attack_dash_input_context_nonce == nonce);
        if (recentPhase && distance > this.Settings.tank_contact_recent_event_max_distance) { return info; }
        local playerOrigin = this.GetOriginSafe(player);
        local tankOrigin = this.GetOriginSafe(tank);
        if (playerOrigin == null || tankOrigin == null) { return info; }
        local vertical = tankOrigin.z - playerOrigin.z;
        if (vertical < 0.0) { vertical = -vertical; }
        if (vertical > this.Settings.tank_contact_vertical_tolerance) { return info; }
        if (this.Settings.tank_contact_requires_dash_travel && info.travelled < this.Settings.tank_contact_min_dash_travel) { return info; }
        if (this.Settings.tank_attack_contact_requires_line_of_sight && !this.GRTraceVisible(playerOrigin + Vector(0, 0, 32), tankOrigin + Vector(0, 0, 32), player)) { return info; }
        local contactDirection = state.dash_direction;
        if (contactDirection == null) { contactDirection = state.attack_dash_context_dash_direction; }
        if (this.Settings.tank_attack_contact_requires_forward_cone && contactDirection != null)
        {
            local toTank = this.NormalizeVector(Vector(tankOrigin.x - playerOrigin.x, tankOrigin.y - playerOrigin.y, 0.0));
            if (toTank == null) { return info; }
            if (this.DotProduct(contactDirection, toTank) < this.Settings.tank_attack_contact_forward_dot) { return info; }
        }
        local fallbackDistance = this.Settings.tank_contact_center_fallback_distance;
        local gap = distance - fallbackDistance;
        if (gap < 0.0) { gap = 0.0; }
        info.surface_gap = gap;
        if (state.pending_tank_native_melee_hint && state.pending_tank_native_melee_entindex == this.GetEntityIndexSafe(tank) && distance <= fallbackDistance)
        {
            info.ok = true;
            if (state.attack_dash_input_context_active) { info.method = "active_melee_hint"; }
            else { info.method = "recent_melee_hint"; }
            return info;
        }
        local segmentDistance = this.GetPointSegmentDistance2D(tankOrigin, state.dash_previous_origin, state.dash_current_origin);
        if (segmentDistance > fallbackDistance && state.attack_dash_context_dash_start_origin != null && state.attack_dash_context_dash_last_origin != null)
        {
            segmentDistance = this.GetPointSegmentDistance2D(tankOrigin, state.attack_dash_context_dash_start_origin, state.attack_dash_context_dash_last_origin);
        }
        if (segmentDistance <= fallbackDistance)
        {
            info.ok = true;
            info.method = "swept_segment";
            info.surface_gap = segmentDistance - fallbackDistance;
            if (info.surface_gap < 0.0) { info.surface_gap = 0.0; }
            return info;
        }
        if (distance <= fallbackDistance)
        {
            info.ok = true;
            info.method = "fallback";
            return info;
        }
        return info;
    },

    function IsTankContactConfirmed(player, tank, state)
    {
        return this.GetTankContactInfo(player, tank, state).ok;
    },

    function HandleConfirmedTankDashImpact(player, tank, state, nonce)
    {
        if (state == null || nonce <= 0 || nonce != state.action_nonce) { return false; }
        if (!this.IsUsableEntity(tank) || this.GetTargetType(tank) != "tank") { return false; }
        local contactInfo = this.GetTankContactInfo(player, tank, state);
        if (!contactInfo.ok) { return false; }
        if (state.pending_tank_contact_nonce == nonce) { return false; }
        state.pending_tank_contact_nonce = nonce;
        state.pending_tank_contact_method = contactInfo.method;
        state.pending_tank_contact_surface_gap = contactInfo.surface_gap;
        state.target_hit_entindices[this.GetEntityIndexSafe(tank)] <- true;
        this.Log("tank_contact_confirmed target=" + this.GetEntityIndexSafe(tank).tostring() + " nonce=" + nonce.tostring() + " method=" + contactInfo.method + " center_distance=" + contactInfo.center_distance.tostring() + " surface_gap=" + contactInfo.surface_gap.tostring() + " travelled=" + contactInfo.travelled.tostring());
        this.RegisterDashDamageContext(player, tank, nonce);
        local before = this.GetHealthSafe(tank);
        local aliveBefore = before > 0;
        local damaged = this.ApplyDamageToTarget(tank, player, this.GetCurrentDashDamage(state));
        local after = this.GetHealthSafe(tank);
        local aliveAfter = after > 0;
        if (!damaged) { return false; }
        state.action_hit_count += 1;
        state.action_special_count += 1;
        this.HandleQualifiedSpecialHit(player, tank, "attack_dash", nonce, this.GetCurrentDashDamage(state));
        this.ApplyTankKnockbackOnce(tank, player, state);
        this.ApplyTankStun(tank, player, state);
        this.RequestDashFinish(state, "tank_contact_impact");
        this.ResolvePlayerTankOverlap(player, tank, state, nonce);
        this.FinishGRDashStrike(player, state, "tank_contact_impact");
        this.ApplyTankPlayerRecoil(player, tank, state);
        this.ClearPendingTankTarget(state);
        return aliveBefore || !aliveAfter;
    },

    function HandleLateConfirmedTankDashImpact(player, tank, state, nonce, nativeDamageAmount)
    {
        if (state == null || nonce <= 0 || nonce != state.attack_dash_input_context_nonce) { return false; }
        if (!this.IsUsableEntity(tank) || this.GetTargetType(tank) != "tank") { return false; }
        local targetIndex = this.GetEntityIndexSafe(tank);
        local resolvedKey = nonce.tostring() + ":" + targetIndex.tostring();
        if (resolvedKey in state.attack_dash_context_resolved_targets) { return true; }
        state.pending_tank_target = tank;
        state.pending_tank_entindex = targetIndex;
        state.pending_tank_nonce = nonce;
        state.pending_tank_native_melee_hint = true;
        state.pending_tank_native_melee_entindex = targetIndex;
        local contactInfo = this.GetTankContactInfo(player, tank, state);
        if (!contactInfo.ok) { return false; }
        local oldNonce = state.action_nonce;
        local oldTrigger = state.dash_trigger_source;
        local oldMode = state.dash_mode;
        local oldHitCount = state.action_hit_count;
        local oldSpecialCount = state.action_special_count;
        state.action_nonce = nonce;
        state.dash_trigger_source = "attack";
        state.dash_mode = "attack";
        state.action_hit_count = 1;
        state.action_special_count = 1;
        state.pending_tank_contact_nonce = nonce;
        state.pending_tank_contact_method = contactInfo.method;
        state.pending_tank_contact_surface_gap = contactInfo.surface_gap;
        this.Log("tank_contact_confirmed target=" + targetIndex.tostring() + " nonce=" + nonce.tostring() + " method=" + contactInfo.method + " distance=" + contactInfo.center_distance.tostring() + " travelled=" + contactInfo.travelled.tostring());
        local rewardDamage = nativeDamageAmount;
        if (rewardDamage <= 0.0) { rewardDamage = 1.0; }
        this.HandleQualifiedSpecialHit(player, tank, "attack_dash", nonce, rewardDamage);
        this.FinishDashCombo(player, state, "late_tank_contact");
        this.ApplyTankKnockbackOnce(tank, player, state);
        this.ApplyTankStun(tank, player, state);
        this.ResolvePlayerTankOverlap(player, tank, state, nonce);
        this.ApplyPostDashBrake(player, state, "late_tank_contact");
        this.ApplyTankPlayerRecoil(player, tank, state);
        state.attack_dash_context_resolved_targets[resolvedKey] <- true;
        this.ClearPendingTankTarget(state);
        state.action_nonce = oldNonce;
        state.dash_trigger_source = oldTrigger;
        state.dash_mode = oldMode;
        state.action_hit_count = oldHitCount;
        state.action_special_count = oldSpecialCount;
        return true;
    },

    function LogPendingTankNotReached(player, state, reason)
    {
        if (state == null || state.pending_tank_nonce != state.action_nonce || state.pending_tank_entindex < 0) { return; }
        if (state.pending_tank_not_reached_nonce == state.action_nonce) { return; }
        state.pending_tank_not_reached_nonce = state.action_nonce;
        local distance = 99999.0;
        if (this.IsUsableEntity(state.pending_tank_target))
        {
            distance = this.GetTankContactDistance(player, state.pending_tank_target);
        }
        this.Log("tank_contact_not_reached target=" + state.pending_tank_entindex.tostring() + " nonce=" + state.action_nonce.tostring() + " final_distance=" + distance.tostring() + " reason=" + reason);
        this.ClearPendingTankTarget(state);
    },

    function TryConfirmPendingTankContact(player, state)
    {
        if (state == null || state.pending_tank_nonce != state.action_nonce) { return false; }
        local tank = state.pending_tank_target;
        if (!this.IsUsableEntity(tank) || this.GetEntityIndexSafe(tank) != state.pending_tank_entindex)
        {
            this.ClearPendingTankTarget(state);
            return false;
        }
        if (!this.IsTankContactConfirmed(player, tank, state)) { return false; }
        return this.HandleConfirmedTankDashImpact(player, tank, state, state.action_nonce);
    },

    function ProcessTankImpact(player, state, now)
    {
        if (state == null || state.tank_impact_nonce <= 0 || state.tank_impact_target_entindex < 0) { return; }
        local target = state.tank_impact_target;
        if (!this.IsUsableEntity(target) || this.GetEntityIndexSafe(target) != state.tank_impact_target_entindex || this.GetTargetType(target) != "tank")
        {
            this.ClearTankImpactState(state);
            return;
        }
        if (!state.tank_impact_verified && now <= state.tank_impact_until && state.tank_impact_direction != null)
        {
            local velocity = Vector(state.tank_impact_direction.x * this.Settings.tank_knockback_horizontal, state.tank_impact_direction.y * this.Settings.tank_knockback_horizontal, this.Settings.tank_knockback_vertical);
            this.ApplyVelocity(target, velocity);
        }
        if (state.tank_impact_verified || now < state.tank_impact_verify_time) { return; }
        local origin = this.GetOriginSafe(target);
        local moved = 0.0;
        if (origin != null && state.tank_impact_origin != null)
        {
            moved = this.VectorLength(Vector(origin.x - state.tank_impact_origin.x, origin.y - state.tank_impact_origin.y, 0.0));
        }
        if (moved >= this.Settings.tank_knockback_min_verified_displacement)
        {
            state.tank_impact_verified = true;
            this.Log("tank_knockback_verified target=" + state.tank_impact_target_entindex.tostring() + " nonce=" + state.tank_impact_nonce.tostring() + " displacement=" + moved.tostring());
            return;
        }
        if (!state.tank_impact_verify_retry_done && state.tank_impact_direction != null)
        {
            state.tank_impact_verify_retry_done = true;
            local retryVelocity = Vector(state.tank_impact_direction.x * this.Settings.tank_knockback_horizontal * 0.65, state.tank_impact_direction.y * this.Settings.tank_knockback_horizontal * 0.65, this.Settings.tank_knockback_vertical * 0.65);
            this.ApplyVelocity(target, retryVelocity);
            state.tank_impact_verify_time = now + this.Settings.tank_knockback_verify_delay;
            this.Log("tank_knockback_retry target=" + state.tank_impact_target_entindex.tostring() + " nonce=" + state.tank_impact_nonce.tostring() + " displacement=" + moved.tostring());
            return;
        }
        if (!state.tank_impact_stun_attempted)
        {
            state.tank_impact_stun_attempted = true;
            if (this.TryTankStunFallback(target, player))
            {
                state.tank_impact_verified = true;
                this.Log("tank_stun_fallback_verified target=" + state.tank_impact_target_entindex.tostring() + " nonce=" + state.tank_impact_nonce.tostring() + " displacement=" + moved.tostring());
                return;
            }
        }
        if (!state.tank_impact_failure_logged)
        {
            state.tank_impact_failure_logged = true;
            this.Log("TANK_KNOCKBACK_VERIFY_FAILURE target=" + state.tank_impact_target_entindex.tostring() + " nonce=" + state.tank_impact_nonce.tostring() + " displacement=" + moved.tostring());
        }
    },

    function ApplySelfDamageOnce(player, state, nonce, action)
    {
        if (state.action_self_damage_nonce == nonce || this.Settings.skill_self_damage <= 0.0) { return false; }
        state.action_self_damage_nonce = nonce;
        this.MarkInternalDamage(player, player);
        try { player.TakeDamage(this.Settings.skill_self_damage, 4, player); } catch (error) {}
        this.Log("skill_self_damage amount=" + this.Settings.skill_self_damage.tostring() + " action=" + action);
        return true;
    },

    function GetDashCostForMode(mode)
    {
        if (mode == "normal") { return this.Settings.normal_dash_health_cost; }
        return this.Settings.attack_dash_health_cost;
    },

    function GetEffectiveHealthForCost(player)
    {
        local permanent = this.GetHealthSafe(player).tofloat();
        local buffer = this.ReadFloatProp(player, "m_healthBuffer", 0.0);
        if (buffer < 0.0) { buffer = 0.0; }
        return permanent + buffer;
    },

    function CanPayDashHealthCost(player, mode)
    {
        local amount = this.GetDashCostForMode(mode);
        if (amount <= 0.0) { return true; }
        return this.GetEffectiveHealthForCost(player) > amount;
    },

    function ApplyDashCostOnce(player, state, nonce, mode)
    {
        if (state == null || state.dash_cost_applied || nonce <= 0) { return false; }
        local amount = this.GetDashCostForMode(mode);
        if (amount <= 0.0)
        {
            state.dash_cost_applied = true;
            return true;
        }
        state.dash_cost_applied = true;
        this.MarkInternalDamage(player, player);
        try { player.TakeDamage(amount, 4, player); } catch (error) {}
        this.Log("dash_cost_applied nonce=" + nonce.tostring() + " mode=" + mode + " amount=" + amount.tostring());
        return true;
    },

    function IsDashAttackMode(state)
    {
        return state != null && state.dash_mode == "attack";
    },

    function RequestDashFinish(state, reason)
    {
        if (state == null || state.dash_finish_requested) { return; }
        state.dash_finish_requested = true;
        state.dash_finish_reason = reason;
    },

    function IsLargeCollisionTargetType(t)
    {
        return t == "tank";
    },

    function IsSafeDashPosition(player, state, pos)
    {
        if (pos == null) { return false; }
        if (this.GRTraceBlockedByWorld(pos + Vector(0, 0, 32), pos + Vector(1, 0, 32), player, null)) { return false; }
        return true;
    },

    function IsOverlappingLargeTargetAtPosition(pos, target)
    {
        local targetOrigin = this.GetOriginSafe(target);
        if (pos == null || targetOrigin == null) { return false; }
        local distance = this.VectorLength(Vector(pos.x - targetOrigin.x, pos.y - targetOrigin.y, 0.0));
        return distance < this.Settings.tank_player_min_separation;
    },

    function UpdateLastSafeDashOrigin(player, state, origin)
    {
        if (state == null || origin == null) { return; }
        if (!this.IsSafeDashPosition(player, state, origin)) { return; }
        local blockedByLarge = false;
        foreach (className in ["player", "witch"])
        {
            local entity = null;
            while ((entity = Entities.FindByClassnameWithin(entity, className, origin, this.Settings.tank_player_min_separation)) != null)
            {
                local t = this.GetTargetType(entity);
                if (this.IsLargeCollisionTargetType(t) && this.IsOverlappingLargeTargetAtPosition(origin, entity))
                {
                    blockedByLarge = true;
                    break;
                }
            }
            if (blockedByLarge) { break; }
        }
        if (blockedByLarge) { return; }
        state.last_safe_dash_origin = origin;
        state.last_safe_dash_time = this.GetCurrentTime();
    },

    function ResolvePlayerTankOverlap(player, tank, state, nonce)
    {
        if (!this.Settings.tank_player_separation_enabled || state == null || nonce <= 0 || !this.IsUsableEntity(tank)) { return false; }
        local playerOrigin = this.GetOriginSafe(player);
        local tankOrigin = this.GetOriginSafe(tank);
        local targetIndex = this.GetEntityIndexSafe(tank);
        if (playerOrigin == null || tankOrigin == null) { return false; }
        local distance = this.VectorLength(Vector(playerOrigin.x - tankOrigin.x, playerOrigin.y - tankOrigin.y, 0.0));
        this.Log("tank_impact_snapshot target=" + targetIndex.tostring() + " nonce=" + nonce.tostring() + " player_distance=" + distance.tostring());
        if (distance >= this.Settings.tank_player_min_separation)
        {
            if (state.tank_overlap_checked_nonce != nonce)
            {
                state.tank_overlap_checked_nonce = nonce;
                this.Log("tank_overlap_clear target=" + targetIndex.tostring() + " nonce=" + nonce.tostring());
            }
            return true;
        }
        if (state.tank_overlap_checked_nonce != nonce)
        {
            state.tank_overlap_checked_nonce = nonce;
            this.Log("tank_overlap_detected target=" + targetIndex.tostring() + " nonce=" + nonce.tostring());
        }
        local candidates = [];
        if (state.last_safe_dash_origin != null) { candidates.append({ method = "last_safe", origin = state.last_safe_dash_origin }); }
        local away = null;
        if (state.dash_direction != null)
        {
            away = playerOrigin - Vector(state.dash_direction.x * this.Settings.tank_player_min_separation, state.dash_direction.y * this.Settings.tank_player_min_separation, 0.0);
            candidates.append({ method = "opposite_dash", origin = away });
        }
        if (state.dash_start_origin != null) { candidates.append({ method = "dash_start", origin = state.dash_start_origin }); }
        foreach (candidate in candidates)
        {
            local pos = candidate.origin;
            if (pos == null) { continue; }
            if (!this.IsSafeDashPosition(player, state, pos)) { continue; }
            if (this.IsOverlappingLargeTargetAtPosition(pos, tank)) { continue; }
            local displacement = this.VectorLength(pos - playerOrigin);
            if (displacement > 260.0) { continue; }
            try { player.SetOrigin(pos); } catch (error) { continue; }
            state.tank_overlap_resolved_nonce = nonce;
            this.Log("tank_overlap_resolved target=" + targetIndex.tostring() + " nonce=" + nonce.tostring() + " method=" + candidate.method + " displacement=" + displacement.tostring());
            return true;
        }
        if (state.tank_overlap_failed_nonce != nonce)
        {
            state.tank_overlap_failed_nonce = nonce;
            this.Log("TANK_OVERLAP_RESOLVE_FAILURE target=" + targetIndex.tostring() + " nonce=" + nonce.tostring());
        }
        return false;
    },

    function GetNormalDashPushForType(t)
    {
        if (t == "common") { return Vector(this.Settings.normal_dash_common_push_horizontal, 0.0, this.Settings.normal_dash_common_push_vertical); }
        if (t == "tank") { return Vector(this.Settings.normal_dash_tank_push_horizontal, 0.0, this.Settings.normal_dash_tank_push_vertical); }
        if (t == "witch") { return Vector(this.Settings.normal_dash_witch_push_horizontal, 0.0, this.Settings.normal_dash_witch_push_vertical); }
        return Vector(this.Settings.normal_dash_special_push_horizontal, 0.0, this.Settings.normal_dash_special_push_vertical);
    },

    function ApplyNormalDashPush(target, state, t)
    {
        if (!this.Settings.normal_dash_push_enabled || state == null || state.dash_direction == null) { return false; }
        local push = this.GetNormalDashPushForType(t);
        local velocity = Vector(state.dash_direction.x * push.x, state.dash_direction.y * push.x, push.z);
        return this.ApplyVelocity(target, velocity);
    },

    function ProcessNormalDashContact(player, state, target, t, idx)
    {
        state.target_hit_entindices[idx] <- true;
        state.action_hit_count += 1;
        if (this.IsLargeCollisionTargetType(t))
        {
            this.ResolvePlayerTankOverlap(player, target, state, state.action_nonce);
            local finishReason = "large_target_blocked_safe";
            if (t == "tank") { finishReason = "tank_blocked_safe"; }
            this.RequestDashFinish(state, finishReason);
            this.Log("normal_dash_large_target_blocked target=" + idx.tostring() + " type=" + t + " nonce=" + state.action_nonce.tostring());
            return true;
        }
        this.ApplyNormalDashPush(target, state, t);
        this.Log("normal_dash_push target=" + idx.tostring() + " type=" + t + " nonce=" + state.action_nonce.tostring());
        return true;
    },

    function ProcessAttackDashHit(player, state, target, t, idx)
    {
        if (t == "tank")
        {
            this.MarkSlashQualifiedHit(player, state, target, t);
            this.RegisterTankCandidate(player, target, state, "swept");
            return false;
        }
        local before = this.GetHealthSafe(target);
        local aliveBefore = before > 0;
        this.RegisterDashDamageContext(player, target, state.action_nonce);
        local damaged = this.ApplyDamageToTarget(target, player, this.GetCurrentDashDamage(state));
        local after = this.GetHealthSafe(target);
        local aliveAfter = after > 0;
        state.target_hit_entindices[idx] <- true;
        if (damaged)
        {
            state.action_hit_count += 1;
            this.ApplyKnockback(target, state.dash_direction);
            if (this.IsSpecialHealTargetType(t) && (after < before || (aliveBefore && !aliveAfter)))
            {
                state.action_special_count += 1;
                this.HandleQualifiedSpecialHit(player, target, "attack_dash", state.action_nonce, this.GetCurrentDashDamage(state));
                this.MarkSlashQualifiedHit(player, state, target, t);
            }
        }
        return damaged;
    },

    function GetAllDamageTargetsNear(center, radius)
    {
        local list = [];
        foreach (className in ["infected", "player", "witch"])
        {
            local entity = null;
            while ((entity = Entities.FindByClassnameWithin(entity, className, center, radius)) != null)
            {
                if (this.IsAllowedDamageTarget(entity))
                {
                    list.append(entity);
                }
            }
        }
        return list;
    },

    function LogTongueEscapeRejectOnce(player, state, reason)
    {
        if (state == null) { return; }
        if (reason in state.tongue_escape_reject_reasons) { return; }
        state.tongue_escape_reject_reasons[reason] <- true;
        this.Log("[XNP ATS ESCAPE] escape_rejected reason=" + reason);
    },

    function ClearTongueEscapeState(player, state, reason)
    {
        if (state == null) { return; }
        if (state.tongue_escape_armed && reason != "")
        {
            this.Log("[XNP ATS ESCAPE] tongue_control_cleared victim=" + this.GetEntityIndexSafe(player).tostring() + " reason=" + reason);
        }
        state.tongue_escape_armed = false;
        state.tongue_escape_token = 0;
        state.tongue_escape_victim_userid = 0;
        state.tongue_escape_smoker_userid = 0;
        state.tongue_escape_smoker_entindex = -1;
        state.tongue_escape_grabbed_at = 0.0;
        state.tongue_escape_consumed = false;
        state.tongue_escape_waiting_for_fresh_press = false;
        state.tongue_escape_duplicate_logged = false;
        state.tongue_escape_reject_reasons = {};
    },

    function ClearTongueEscapeForSmoker(smoker, reason)
    {
        local smokerIndex = this.GetEntityIndexSafe(smoker);
        if (smokerIndex < 0) { return; }
        local player = null;
        while ((player = Entities.FindByClassname(player, "player")) != null)
        {
            local state = this.GetPlayerState(player);
            if (state == null || !state.tongue_escape_armed) { continue; }
            if (state.tongue_escape_smoker_entindex == smokerIndex)
            {
                this.ClearTongueEscapeState(player, state, reason);
            }
        }
    },

    function ArmTongueEscapeControl(victim, state, smoker, smokerUserID, victimUserID, now)
    {
        if (state == null || !this.IsSmokerPlayer(smoker) || !this.IsEligibleSurvivor(victim)) { return false; }
        this.ActionSerial += 1;
        state.tongue_escape_armed = true;
        state.tongue_escape_token = this.ActionSerial;
        state.tongue_escape_victim_userid = victimUserID;
        state.tongue_escape_smoker_userid = smokerUserID;
        state.tongue_escape_smoker_entindex = this.GetEntityIndexSafe(smoker);
        state.tongue_escape_grabbed_at = now;
        state.tongue_escape_consumed = false;
        state.tongue_escape_waiting_for_fresh_press = false;
        state.tongue_escape_duplicate_logged = false;
        state.tongue_escape_reject_reasons = {};
        this.Log("[XNP ATS ESCAPE] tongue_control_armed victim=" + this.GetEntityIndexSafe(victim).tostring() + " smoker=" + state.tongue_escape_smoker_entindex.tostring() + " token=" + state.tongue_escape_token.tostring());
        return true;
    },

    function ConsumeTongueEscapeToken(player, state)
    {
        if (state == null || !state.tongue_escape_armed) { return false; }
        if (state.tongue_escape_consumed)
        {
            if (!state.tongue_escape_duplicate_logged)
            {
                state.tongue_escape_duplicate_logged = true;
                this.Log("[XNP ATS ESCAPE] duplicate_input_ignored victim=" + this.GetEntityIndexSafe(player).tostring() + " token=" + state.tongue_escape_token.tostring());
            }
            return false;
        }
        state.tongue_escape_consumed = true;
        state.tongue_escape_armed = false;
        state.tongue_escape_waiting_for_fresh_press = false;
        return true;
    },

    function GetTongueEscapeSmoker(state)
    {
        if (state == null || state.tongue_escape_smoker_entindex < 0) { return null; }
        return this.GetEntityFromIndex(state.tongue_escape_smoker_entindex);
    },

    function StartExistingTongueBreakoutEffects(player, state, now)
    {
        if (state == null) { return false; }
        if (this.Settings.tongue_manual_escape_aftershock_enabled) { this.StartSmokerBreakoutAftershock(player, state, now); }
        if (this.Settings.tongue_manual_escape_regrab_protection_enabled)
        {
            state.smoker_breakout_protection_until = now + this.Settings.smoker_breakout_protection_seconds;
            state.smoker_breakout_protection_logged_end = false;
        }
        return true;
    },

    function TryManualTongueEscapeFromSkillInput(player, state, now)
    {
        if (!this.Settings.tongue_manual_escape_enabled || state == null || !state.tongue_escape_armed) { return false; }
        if (state.tongue_escape_consumed)
        {
            this.ConsumeTongueEscapeToken(player, state);
            return true;
        }
        if (!this.IsEligibleSurvivor(player))
        {
            this.ClearTongueEscapeState(player, state, "invalid_victim");
            return true;
        }
        if (this.Settings.tongue_manual_escape_requires_melee && !this.IsMeleeWeapon(this.GetActiveWeapon(player)))
        {
            this.LogTongueEscapeRejectOnce(player, state, "no_melee");
            return true;
        }
        local smoker = this.GetTongueEscapeSmoker(state);
        if (!this.IsSmokerPlayer(smoker) || this.IsPlayerDead(smoker))
        {
            this.LogTongueEscapeRejectOnce(player, state, "invalid_smoker");
            this.ClearTongueEscapeState(player, state, "invalid_smoker");
            return true;
        }
        if (this.Settings.tongue_manual_escape_requires_charge && !this.ConsumeManualTongueEscapeCharge(player, state))
        {
            return true;
        }
        local token = state.tongue_escape_token;
        this.Log("[XNP ATS ESCAPE] manual_skill_press victim=" + this.GetEntityIndexSafe(player).tostring() + " smoker=" + this.GetEntityIndexSafe(smoker).tostring() + " token=" + token.tostring());
        local killed = this.KillSmokerForBreakout(smoker, player);
        if (!killed)
        {
            this.RefundManualTongueEscapeCharge(player, state, "smoker_kill_failed");
            this.LogTongueEscapeRejectOnce(player, state, "invalid_smoker");
            return true;
        }
        if (!this.ConsumeTongueEscapeToken(player, state)) { return true; }
        this.Log("[XNP ATS ESCAPE] controlling_smoker_killed victim=" + this.GetEntityIndexSafe(player).tostring() + " smoker=" + this.GetEntityIndexSafe(smoker).tostring() + " token=" + token.tostring());
        this.RegisterSmokerBreakoutPending(state.tongue_escape_smoker_userid, state.tongue_escape_victim_userid, smoker, player, now);
        this.StartExistingTongueBreakoutEffects(player, state, now);
        state.suppress_skill_until_release_after_tongue_escape = true;
        this.Log("[XNP ATS ESCAPE] manual_escape_completed victim=" + this.GetEntityIndexSafe(player).tostring() + " token=" + token.tostring());
        this.ClearTongueEscapeState(player, state, "");
        return true;
    },

    function TryRecentPressManualTongueEscape(player, state, now)
    {
        if (state == null || !state.tongue_escape_armed) { return false; }
        local age = now - state.skill_key_press_time;
        if (state.skill_key_press_time <= 0.0 || age < 0.0 || age > this.Settings.tongue_manual_escape_recent_press_buffer)
        {
            if (!state.tongue_escape_waiting_for_fresh_press)
            {
                state.tongue_escape_waiting_for_fresh_press = true;
                this.Log("[XNP ATS ESCAPE] waiting_for_fresh_press victim=" + this.GetEntityIndexSafe(player).tostring() + " token=" + state.tongue_escape_token.tostring());
            }
            return false;
        }
        this.Log("[XNP ATS ESCAPE] recent_press_buffer_accepted victim=" + this.GetEntityIndexSafe(player).tostring() + " age=" + age.tostring());
        return this.TryManualTongueEscapeFromSkillInput(player, state, now);
    },

    function RegisterSmokerBreakoutPending(smokerUserID, victimUserID, smoker, victim, now)
    {
        local key = this.MakeSmokerBreakoutKey(smokerUserID, victimUserID);
        if (key in this.SmokerBreakoutPending) { delete this.SmokerBreakoutPending[key]; }
        this.SmokerBreakoutPending[key] <- {
            smoker_userid = smokerUserID,
            victim_userid = victimUserID,
            victim_ent = this.GetEntityIndexSafe(victim),
            smoker_ent = this.GetEntityIndexSafe(smoker),
            handled_at = now,
            pending_release_until = now + this.Settings.smoker_breakout_release_verify_seconds,
            aftershock_started = true,
            confirmed = false,
        };
        return true;
    },

    function MakeSmokerBreakoutKey(smokerUserID, victimUserID)
    {
        return smokerUserID.tostring() + ":" + victimUserID.tostring();
    },

    function IsSmokerBreakoutProtectionActive(player, state, now)
    {
        if (!this.Settings.smoker_breakout_enabled || state == null) { return false; }
        if (!this.IsEligibleSurvivor(player)) { return false; }
        if (state.state_name == this.STATE_AIR_HOLD || state.state_name == this.STATE_AIR_HOLD_CHAIN || state.state_name == this.STATE_AIR_DASH) { return true; }
        if (this.Settings.ground_dash_smoker_breakout_enabled && state.state_name == this.STATE_GROUND_HOLD) { return true; }
        return state.smoker_breakout_protection_until > now;
    },

    function KillSmokerForBreakout(smoker, victim)
    {
        if (!this.Settings.smoker_breakout_kill_smoker) { return false; }
        if (!this.IsSmokerPlayer(smoker) || !this.IsEligibleSurvivor(victim)) { return false; }
        this.MarkInternalDamage(victim, smoker);
        local killed = false;
        try { smoker.TakeDamage(99999.0, 4, victim); killed = true; } catch (error) {}
        if (!killed)
        {
            try { smoker.TakeDamageEx(victim, victim, null, Vector(0, 0, 0), this.GetOriginSafe(smoker), 99999.0, 4); killed = true; } catch (error2) {}
        }
        return killed;
    },

    function StartSmokerBreakoutAftershock(player, state, now)
    {
        if (state == null || !this.IsEligibleSurvivor(player)) { return false; }
        this.ActionSerial += 1;
        state.smoker_breakout_aftershock_nonce = this.ActionSerial;
        state.smoker_breakout_aftershock_active = true;
        state.smoker_breakout_aftershock_until = now + this.Settings.smoker_breakout_aftershock_duration;
        state.smoker_breakout_aftershock_next_at = now;
        state.smoker_breakout_aftershock_targets = {};
        this.ProcessSmokerBreakoutAftershock(player, state, now, true);
        return true;
    },

    function GetSmokerBreakoutPushForType(targetType)
    {
        if (targetType == "common") { return Vector(this.Settings.smoker_breakout_common_horizontal, 0.0, this.Settings.smoker_breakout_common_vertical); }
        if (targetType == "witch") { return Vector(this.Settings.smoker_breakout_witch_horizontal, 0.0, this.Settings.smoker_breakout_witch_vertical); }
        if (targetType == "tank") { return Vector(this.Settings.normal_dash_tank_knockback_horizontal, 0.0, this.Settings.normal_dash_tank_knockback_vertical); }
        return Vector(this.Settings.smoker_breakout_special_horizontal, 0.0, this.Settings.smoker_breakout_special_vertical);
    },

    function ApplySmokerBreakoutTargetPush(player, state, target, targetType, now)
    {
        if (!this.IsUsableEntity(target) || target == player) { return false; }
        if (targetType == "tank" && !this.Settings.smoker_breakout_include_tank) { return false; }
        local targetIndex = this.GetEntityIndexSafe(target);
        if (targetIndex < 0) { return false; }
        local key = targetIndex.tostring();
        if (key in state.smoker_breakout_aftershock_targets && now < state.smoker_breakout_aftershock_targets[key]) { return false; }
        if (key in state.smoker_breakout_aftershock_targets) { delete state.smoker_breakout_aftershock_targets[key]; }
        local playerOrigin = this.GetOriginSafe(player);
        local targetCenter = this.GetTargetCenter(target);
        if (playerOrigin == null || targetCenter == null) { return false; }
        if (this.GRTraceBlockedByStaticWorld(playerOrigin + Vector(0.0, 0.0, 32.0), targetCenter, player, target)) { return false; }
        local direction = this.NormalizeVector(Vector(targetCenter.x - playerOrigin.x, targetCenter.y - playerOrigin.y, 0.0));
        if (direction == null)
        {
            local forward = this.GetViewForward(player);
            if (forward != null) { direction = this.NormalizeVector(Vector(forward.x, forward.y, 0.0)); }
        }
        if (direction == null) { direction = Vector(1.0, 0.0, 0.0); }
        local push = this.GetSmokerBreakoutPushForType(targetType);
        local applied = false;
        if (targetType == "tank")
        {
            this.StartAreaStunController(player, target, targetType, state.smoker_breakout_aftershock_nonce, "normal");
            applied = this.ApplyTankAreaKnockback(player, target, state, state.smoker_breakout_aftershock_nonce, "normal");
        }
        else
        {
            applied = this.ApplyVelocity(target, Vector(direction.x * push.x, direction.y * push.x, push.z));
            this.TryAreaStagger(player, target, targetType);
        }
        state.smoker_breakout_aftershock_targets[key] <- now + this.Settings.smoker_breakout_target_repeat_cooldown;
        this.Log("[XNP GR BREAKOUT] aftershock_target target=" + targetIndex.tostring() + " type=" + targetType + " applied=" + applied.tostring());
        return true;
    },

    function ProcessSmokerBreakoutAftershock(player, state, now, immediate)
    {
        if (state == null || !state.smoker_breakout_aftershock_active) { return; }
        if (!this.IsEligibleSurvivor(player))
        {
            state.smoker_breakout_aftershock_active = false;
            return;
        }
        if (!immediate && now < state.smoker_breakout_aftershock_next_at) { return; }
        if (now > state.smoker_breakout_aftershock_until)
        {
            state.smoker_breakout_aftershock_active = false;
            return;
        }
        local origin = this.GetOriginSafe(player);
        if (origin == null) { return; }
        local targets = this.GetAllDamageTargetsNear(origin, this.Settings.smoker_breakout_push_radius);
        foreach (target in targets)
        {
            local targetType = this.GetDashAreaTargetType(target);
            if (targetType == "invalid") { continue; }
            this.ApplySmokerBreakoutTargetPush(player, state, target, targetType, now);
        }
        state.smoker_breakout_aftershock_next_at = now + this.Settings.smoker_breakout_aftershock_interval;
    },

    function MaintainSmokerBreakoutState(player, state, now)
    {
        if (state == null) { return; }
        this.ProcessSmokerBreakoutAftershock(player, state, now, false);
        if (state.smoker_breakout_protection_until > 0.0 && now >= state.smoker_breakout_protection_until && !state.smoker_breakout_protection_logged_end)
        {
            state.smoker_breakout_protection_logged_end = true;
            this.Log("[XNP GR BREAKOUT] protection_ended ent=" + this.GetEntityIndexSafe(player).tostring());
        }
        local expired = [];
        foreach (key, untilTime in state.smoker_breakout_grab_dedupe)
        {
            if (now >= untilTime) { expired.append(key); }
        }
        foreach (key in expired)
        {
            if (key in state.smoker_breakout_grab_dedupe) { delete state.smoker_breakout_grab_dedupe[key]; }
        }
    },

    function MaintainSmokerBreakoutPending(now)
    {
        local expired = [];
        foreach (key, pending in this.SmokerBreakoutPending)
        {
            if (pending == null || pending.confirmed)
            {
                expired.append(key);
                continue;
            }
            if (now >= pending.pending_release_until)
            {
                this.Log("[XNP GR BREAKOUT] SMOKER_RELEASE_UNVERIFIED victim=" + pending.victim_ent.tostring() + " smoker_userid=" + pending.smoker_userid.tostring());
                pending.confirmed = true;
                expired.append(key);
            }
        }
        foreach (key in expired)
        {
            if (key in this.SmokerBreakoutPending) { delete this.SmokerBreakoutPending[key]; }
        }
    },

    function HandleSmokerBreakoutGrab(params, eventName)
    {
        local smokerUserID = this.GetUserIDParam(params, "userid");
        local victimUserID = this.GetUserIDParam(params, "victim");
        local smoker = this.GetPlayerFromEventUserID(smokerUserID);
        local victim = this.GetPlayerFromEventUserID(victimUserID);
        local now = this.GetCurrentTime();
        if (!this.IsSmokerPlayer(smoker) || !this.IsEligibleSurvivor(victim) || smoker == victim) { return false; }
        local state = this.GetPlayerState(victim);
        if (state == null) { return false; }
        local key = this.MakeSmokerBreakoutKey(smokerUserID, victimUserID);
        if (state != null && key in state.smoker_breakout_grab_dedupe && now < state.smoker_breakout_grab_dedupe[key]) { return false; }
        if (state != null && key in state.smoker_breakout_grab_dedupe) { delete state.smoker_breakout_grab_dedupe[key]; }
        local alreadyArmedSameGrab = state.tongue_escape_armed && state.tongue_escape_smoker_userid == smokerUserID;
        if (!alreadyArmedSameGrab)
        {
            this.ArmTongueEscapeControl(victim, state, smoker, smokerUserID, victimUserID, now);
        }
        if (!this.IsSmokerBreakoutProtectionActive(victim, state, now))
        {
            this.TryRecentPressManualTongueEscape(victim, state, now);
            return false;
        }
        if (!this.ConsumeTongueEscapeToken(victim, state)) { return false; }
        state.smoker_breakout_grab_dedupe[key] <- now + this.Settings.smoker_breakout_release_verify_seconds;
        local groundBreakout = this.Settings.ground_dash_smoker_breakout_enabled && (state.state_name == this.STATE_GROUND_HOLD || (state.state_name == this.STATE_AIR_DASH && state.dash_started_from_ground));
        if (groundBreakout) { this.Log("[XNP GR BREAKOUT] ground_smoker_grab_detected victim=" + this.GetEntityIndexSafe(victim).tostring() + " smoker=" + this.GetEntityIndexSafe(smoker).tostring() + " state=" + state.state_name); }
        else { this.Log("[XNP GR BREAKOUT] smoker_grab_detected victim=" + this.GetEntityIndexSafe(victim).tostring() + " smoker=" + this.GetEntityIndexSafe(smoker).tostring() + " state=" + state.state_name); }
        local killed = this.KillSmokerForBreakout(smoker, victim);
        if (killed && groundBreakout) { this.Log("[XNP GR BREAKOUT] ground_smoker_killed victim=" + this.GetEntityIndexSafe(victim).tostring() + " smoker=" + this.GetEntityIndexSafe(smoker).tostring()); }
        else if (killed) { this.Log("[XNP GR BREAKOUT] smoker_killed victim=" + this.GetEntityIndexSafe(victim).tostring() + " smoker=" + this.GetEntityIndexSafe(smoker).tostring()); }
        if (state != null)
        {
            this.RegisterSmokerBreakoutPending(smokerUserID, victimUserID, smoker, victim, now);
            this.StartSmokerBreakoutAftershock(victim, state, now);
            state.smoker_breakout_protection_until = now + this.Settings.smoker_breakout_protection_seconds;
            state.smoker_breakout_protection_logged_end = false;
            this.ClearTongueEscapeState(victim, state, "");
        }
        return killed;
    },

    function ConfirmSmokerBreakoutRelease(params, method)
    {
        local smokerUserID = this.GetUserIDParam(params, "userid");
        local victimUserID = this.GetUserIDParam(params, "victim");
        if (victimUserID <= 0) { return false; }
        local victim = this.GetPlayerFromEventUserID(victimUserID);
        local state = this.GetPlayerState(victim);
        local key = this.MakeSmokerBreakoutKey(smokerUserID, victimUserID);
        if (!(key in this.SmokerBreakoutPending))
        {
            if (state != null) { this.ClearTongueEscapeState(victim, state, "tongue_release"); }
            return false;
        }
        local pending = this.SmokerBreakoutPending[key];
        if (pending == null || pending.confirmed) { return false; }
        pending.confirmed = true;
        this.Log("[XNP GR BREAKOUT] tongue_released victim=" + pending.victim_ent.tostring() + " smoker=" + pending.smoker_ent.tostring() + " method=" + method);
        delete this.SmokerBreakoutPending[key];
        if (state != null) { this.ClearTongueEscapeState(victim, state, "tongue_release"); }
        return true;
    },

    function GetComboMultiplier(stage)
    {
        if (stage <= 0) { return this.Settings.combo_multiplier_1; }
        if (stage == 1) { return this.Settings.combo_multiplier_2; }
        return this.Settings.combo_multiplier_3;
    },

    function ResetComboState(player, state, reason)
    {
        if (state == null) { return; }
        if (state.combo_stage == 0 && state.combo_last_success_time == 0.0) { return; }
        state.combo_stage = 0;
        state.combo_last_success_time = 0.0;
        state.combo_resume_at = 0.0;
        state.combo_expires_at = 0.0;
        state.current_dash_multiplier = this.Settings.combo_multiplier_1;
        state.current_dash_combo_stage = 0;
        state.combo_dash_nonce = 0;
        this.Log("combo_reset ent=" + this.GetEntityIndexSafe(player).tostring() + " reason=" + reason);
    },

    function PrepareDashCombo(player, state, triggerSource)
    {
        state.current_dash_multiplier = this.Settings.combo_multiplier_1;
        state.current_dash_combo_stage = 0;
        state.combo_dash_nonce = state.action_nonce;
        if (!this.Settings.combo_enabled || triggerSource != "attack") { return; }
        local now = this.GetCurrentTime();
        if (state.combo_expires_at > 0.0 && now > state.combo_expires_at)
        {
            this.ResetComboState(player, state, "timeout");
        }
        state.current_dash_combo_stage = state.combo_stage;
        state.current_dash_multiplier = this.GetComboMultiplier(state.combo_stage);
        this.Log("combo_dash_started ent=" + this.GetEntityIndexSafe(player).tostring() + " nonce=" + state.action_nonce.tostring() + " stage=" + state.combo_stage.tostring() + " multiplier=" + state.current_dash_multiplier.tostring());
    },

    function FinishDashCombo(player, state, reason)
    {
        if (state == null || !this.Settings.combo_enabled) { return; }
        if (state.dash_trigger_source != "attack") { return; }
        if (state.action_special_count <= 0)
        {
            this.Log("combo_not_advanced reason=miss nonce=" + state.action_nonce.tostring());
            return;
        }
        local previousStage = state.combo_stage;
        if (state.combo_stage < 2) { state.combo_stage += 1; }
        local now = this.GetCurrentTime();
        state.combo_last_success_time = now;
        state.combo_resume_at = now;
        state.combo_expires_at = state.combo_resume_at + this.Settings.combo_timeout;
        this.Log("combo_advanced nonce=" + state.action_nonce.tostring() + " from_stage=" + previousStage.tostring() + " to_stage=" + state.combo_stage.tostring() + " reason=" + reason);
    },

    function GetCurrentDashDamage(state)
    {
        if (state == null) { return this.Settings.dash_damage; }
        return this.Settings.dash_damage * state.current_dash_multiplier;
    },

    function ProcessDashSweep(player, state)
    {
        if (state.dash_previous_origin == null || state.dash_current_origin == null) { return 0; }
        local mid = state.dash_current_origin;
        local searchRadius = this.Settings.dash_sweep_radius + this.VectorLength(state.dash_current_origin - state.dash_previous_origin) + 80.0;
        local targets = this.GetAllDamageTargetsNear(mid, searchRadius);
        local hitCount = 0;
        foreach (target in targets)
        {
            local idx = this.GetEntityIndexSafe(target);
            if (idx in state.target_hit_entindices) { continue; }
            local center = this.GetTargetCenter(target);
            if (center == null) { continue; }
            local dist = this.DistancePointToSegment(center, state.dash_previous_origin, state.dash_current_origin);
            if (dist > this.Settings.dash_sweep_radius) { continue; }
            local t = this.GetTargetType(target);
            if (!this.IsDashAttackMode(state))
            {
                hitCount += 1;
                this.ProcessNormalDashContact(player, state, target, t, idx);
                if (state.dash_finish_requested) { return hitCount; }
                continue;
            }
            if (this.ProcessAttackDashHit(player, state, target, t, idx))
            {
                hitCount += 1;
                this.Log("dash_sweep_hit target=" + idx.tostring() + " type=" + t + " nonce=" + state.action_nonce.tostring());
                if (state.dash_finish_requested) { return hitCount; }
            }
        }
        return hitCount;
    },

    function ApplyGRDashFrontAOE(player, state, forward)
    {
        local eye = this.GetEyePosition(player);
        local hitCount = 0;
        if (eye != null && forward != null)
        {
            local targets = this.GetAllDamageTargetsNear(eye, this.Settings.dash_front_range + 80.0);
            foreach (target in targets)
            {
                local idx = this.GetEntityIndexSafe(target);
                if (idx in state.target_hit_entindices) { continue; }
                local center = this.GetTargetCenter(target);
                if (center == null) { continue; }
                local delta = center - eye;
                local dist = this.VectorLength(delta);
                if (dist > this.Settings.dash_front_range) { continue; }
                local dir = this.NormalizeVector(delta);
                if (dir == null) { continue; }
                local dot = this.DotProduct(forward, dir);
                if (dot < -1.0) { dot = -1.0; }
                if (dot > 1.0) { dot = 1.0; }
                local angle = acos(dot) * 57.2957795;
                if (angle > this.Settings.dash_front_half_angle) { continue; }
                if (!this.GRTraceVisible(eye, center, player)) { continue; }
                local t = this.GetTargetType(target);
                if (!this.IsDashAttackMode(state))
                {
                    if (this.IsLargeCollisionTargetType(t)) { continue; }
                    hitCount += 1;
                    this.ProcessNormalDashContact(player, state, target, t, idx);
                    if (state.dash_finish_requested) { return hitCount; }
                    continue;
                }
                if (t == "tank")
                {
                    this.RegisterTankCandidate(player, target, state, "front");
                    continue;
                }
                if (this.ProcessAttackDashHit(player, state, target, t, idx))
                {
                    hitCount += 1;
                    this.Log("dash_front_hit target=" + idx.tostring() + " type=" + t + " nonce=" + state.action_nonce.tostring());
                    if (state.dash_finish_requested) { return hitCount; }
                }
            }
        }
        this.Log("dash_front_complete hit_count=" + hitCount.tostring());
        return hitCount;
    },

    function EnsureTraceReady(player)
    {
        local origin = this.GetOriginSafe(player);
        if (origin == null) { return false; }
        return this.GRTraceVisible(origin, origin + Vector(1, 0, 0), player);
    },

    function StartGRDashStrike(player, state, triggerSource)
    {
        if (state == null || state.dash_started_for_current_cycle) { return false; }
        local now = this.GetCurrentTime();
        if (!this.EnsureTraceReady(player)) { return false; }
        local forward = this.ClampDashDirection(this.GetViewForward(player));
        if (forward == null) { return false; }
        local mode = triggerSource;
        if (mode != "attack") { mode = "normal"; }
        local startedFromGround = this.IsValidGroundDashStartContext(player, state, now, mode);
        if (!this.IsValidDashStartContext(player, state, now, mode))
        {
            this.Log("[XNP GR GATE] dash_start_blocked ent=" + this.GetEntityIndexSafe(player).tostring() + " mode=" + mode + " reason=invalid_context");
            return false;
        }
        if (!this.CanPayDashHealthCost(player, mode))
        {
            this.ProbeEligibility(player, state, "dash_cost_unpayable");
            return false;
        }
        if (!this.TryConsumeSkillCharge(player, state, mode)) { return false; }
        this.DisableSlowFall(player, state, "dash_started");
        this.ActionSerial += 1;
        state.action_nonce = this.ActionSerial;
        state.target_hit_entindices = {};
        state.action_hit_count = 0;
        state.action_special_count = 0;
        state.air_action_spent = true;
        state.dash_direction = forward;
        state.dash_start_origin = this.GetOriginSafe(player);
        state.dash_travelled_distance = 0.0;
        state.last_safe_dash_origin = state.dash_start_origin;
        state.last_safe_dash_time = now;
        state.dash_previous_origin = state.dash_start_origin;
        state.dash_current_origin = state.dash_start_origin;
        state.dash_start_time = now;
        state.dash_trigger_source = mode;
        state.dash_mode = mode;
        state.dash_finish_done = false;
        state.dash_finish_requested = false;
        state.dash_finish_reason = "";
        state.dash_started_for_current_cycle = true;
        state.dash_started_from_ground = startedFromGround;
        state.dash_aborted = false;
        state.dash_cost_applied = false;
        state.slash_qualified_this_dash = false;
        state.slash_qualified_target = -1;
        state.slash_qualified_type = "";
        state.skill_key_released_during_dash = false;
        if (mode == "attack" && !startedFromGround)
        {
            state.air_session_attack_count += 1;
            state.current_slash_index = state.air_session_attack_count;
            this.Log("[XNP GR CHAIN] slash_started ent=" + this.GetEntityIndexSafe(player).tostring() + " air_session=" + state.air_session_id.tostring() + " slash=" + state.current_slash_index.tostring() + " nonce=" + state.action_nonce.tostring());
        }
        else
        {
            state.current_slash_index = 0;
        }
        state.dash_common_passthrough_count = 0;
        state.dash_common_passthrough_logged_nonce = 0;
        state.dash_passthrough_correction_logged_nonce = 0;
        state.common_aoe_pushed_targets = {};
        state.common_aoe_push_logged_nonce = 0;
        state.last_area_stun_scan_time = 0.0;
        state.area_stun_hit_targets = {};
        state.area_stun_target_count = 0;
        state.area_stun_special_count = 0;
        state.area_stun_common_count = 0;
        state.area_stun_logged_nonce = 0;
        state.tank_area_knockback_targets = {};
        state.tank_area_knockback_verify = {};
        state.last_world_trace_fraction = 1.0;
        state.last_world_trace_normal = null;
        this.ClearPendingTankTarget(state);
        state.pending_tank_contact_nonce = 0;
        state.pending_tank_not_reached_nonce = 0;
        this.PrepareDashCombo(player, state, mode);
        this.Log("dash_mode nonce=" + state.action_nonce.tostring() + " mode=" + mode);
        this.ApplyDashCostOnce(player, state, state.action_nonce, mode);
        if (!this.IsEligibleSurvivor(player))
        {
            this.AbortDashAndResetTransientState(player, state, "dash_cost_incapacitated");
            return false;
        }
        if (!startedFromGround) { this.ArmFallProtection(player, state, "dash_started"); }
        this.Log("dash_trigger trigger=" + mode + " nonce=" + state.action_nonce.tostring());
        this.SetState(player, state, this.STATE_AIR_DASH, "dash_started");
        this.ArmAttackDashInputContext(player, state);
        this.PrintCenter(player, "DASH STRIKE");
        this.Log("dash_started nonce=" + state.action_nonce.tostring());
        this.ApplyGRDashFrontAOE(player, state, forward);
        if (startedFromGround && this.Settings.ground_dash_use_existing_area_pulse)
        {
            this.ProcessDashAreaPulse(player, state, state.action_nonce, state.dash_mode);
            this.ProcessDashSweep(player, state);
            this.ProcessCommonAOEPushForStep(player, state);
        }
        if (state.dash_finish_requested)
        {
            this.FinishGRDashStrike(player, state, state.dash_finish_reason);
        }
        return true;
    },

    function ProcessDash(player, state, now)
    {
        if (state.state_name != this.STATE_AIR_DASH) { return; }
        if (!this.IsEligibleForAirSkill(player))
        {
            this.AbortDashAndResetTransientState(player, state, "invalid");
            return;
        }
        local origin = this.GetOriginSafe(player);
        if (origin == null)
        {
            this.AbortDashAndResetTransientState(player, state, "no_origin");
            return;
        }
        if ((now - state.dash_start_time) > this.Settings.dash_duration)
        {
            this.LogPendingTankNotReached(player, state, "duration");
            this.FinishGRDashStrike(player, state, "duration");
            return;
        }
        if (state.dash_start_origin != null && this.VectorLength(origin - state.dash_start_origin) >= this.Settings.dash_max_distance)
        {
            this.LogPendingTankNotReached(player, state, "max_distance");
            this.FinishGRDashStrike(player, state, "max_distance");
            return;
        }
        local next = origin + Vector(state.dash_direction.x * 48.0, state.dash_direction.y * 48.0, state.dash_direction.z * 48.0);
        if (this.GRTraceBlockedByWorld(origin + Vector(0, 0, 32), next + Vector(0, 0, 32), player, state))
        {
            if (state.dash_started_from_ground && this.Settings.ground_dash_use_existing_area_pulse)
            {
                state.dash_previous_origin = state.dash_current_origin;
                state.dash_current_origin = origin;
                this.ProcessDashAreaPulse(player, state, state.action_nonce, state.dash_mode);
                this.ProcessDashSweep(player, state);
                this.ProcessCommonAOEPushForStep(player, state);
            }
            if (this.TryApplyDashWallSlide(player, state))
            {
                this.LogPendingTankNotReached(player, state, "wall_slide");
                this.FinishGRDashStrike(player, state, "wall_slide");
                return;
            }
            this.Log("dash_world_blocked nonce=" + state.action_nonce.tostring() + " fraction=" + state.last_world_trace_fraction.tostring());
            this.LogPendingTankNotReached(player, state, "wall");
            this.FinishGRDashStrike(player, state, "wall");
            return;
        }
        state.dash_previous_origin = state.dash_current_origin;
        state.dash_current_origin = origin;
        state.pending_tank_step_start = state.dash_previous_origin;
        state.pending_tank_step_end = state.dash_current_origin;
        if (state.dash_start_origin != null)
        {
            state.dash_travelled_distance = this.VectorLength(origin - state.dash_start_origin);
        }
        state.attack_dash_context_dash_last_origin = state.dash_current_origin;
        state.attack_dash_context_dash_travelled = state.dash_travelled_distance;
        this.UpdateLastSafeDashOrigin(player, state, origin);
        this.ProcessDashAreaPulse(player, state, state.action_nonce, state.dash_mode);
        this.ProcessDashSweep(player, state);
        this.ProcessCommonAOEPushForStep(player, state);
        if (this.TryConfirmPendingTankContact(player, state)) { return; }
        if (state.state_name != this.STATE_AIR_DASH) { return; }
        if (state.dash_finish_requested)
        {
            this.FinishGRDashStrike(player, state, state.dash_finish_reason);
            return;
        }
        this.TryInfectedPhysicsPassthrough(player, state, origin, next);
        this.ApplyVelocity(player, Vector(state.dash_direction.x * this.Settings.dash_speed, state.dash_direction.y * this.Settings.dash_speed, state.dash_direction.z * this.Settings.dash_speed));
    },

    function ShouldEnterChainHoldAfterSlash(player, state, now, reason)
    {
        if (state == null || state.dash_mode != "attack") { return false; }
        if (reason == "landed") { return false; }
        if (!state.slash_qualified_this_dash) { return false; }
        if (this.Settings.skill_chain_requires_skill_key_held && !state.skill_key_down) { return false; }
        if (state.skill_key_released_during_dash) { return false; }
        if (state.air_session_attack_count >= this.Settings.skill_air_session_max_attack_dashes.tointeger())
        {
            this.Log("[XNP GR CHAIN] chain_finished ent=" + this.GetEntityIndexSafe(player).tostring() + " reason=max_three");
            return false;
        }
        if (!this.IsSkillAirborneConfirmed(player, state, now)) { return false; }
        if (!this.HasSkillChargeQuiet(state)) { return false; }
        return true;
    },

    function FinishGRDashStrike(player, state, reason)
    {
        if (state == null || state.dash_finish_done || state.dash_aborted || state.action_nonce <= 0) { return; }
        if (!this.IsEligibleSurvivor(player))
        {
            this.AbortDashAndResetTransientState(player, state, "finish_invalid");
            return;
        }
        state.dash_finish_done = true;
        this.PreserveRecentAttackDashContext(player, state, reason);
        if (reason != "tank_contact_impact")
        {
            this.LogPendingTankNotReached(player, state, reason);
        }
        local finishOrigin = this.GetOriginSafe(player);
        if (finishOrigin != null)
        {
            if (state.dash_current_origin != null)
            {
                state.dash_previous_origin = state.dash_current_origin;
            }
            state.dash_current_origin = finishOrigin;
        }
        else if (state.dash_current_origin == null)
        {
            state.dash_current_origin = state.dash_previous_origin;
        }
        this.ProcessDashSweep(player, state);
        if (this.IsDashAttackMode(state)) { this.FinishDashCombo(player, state, reason); }
        if (state.state_name == this.STATE_AIR_DASH) { this.ApplyPostDashBrake(player, state, reason); }
        this.ApplyPostDashOverlapEscape(player, state, reason);
        if (!state.dash_started_from_ground && this.IsEligibleSurvivor(player)) { this.ArmFallProtection(player, state, "dash_finished"); }
        this.HideOverlay(player, state);
        this.PrintCenter(player, "DASH STRIKE");
        this.Log("dash_completed nonce=" + state.action_nonce.tostring() + " trigger=" + state.dash_trigger_source + " reason=" + reason + " hit_count=" + state.action_hit_count.tostring() + " special_count=" + state.action_special_count.tostring());
        state.air_action_spent = true;
        if (state.dash_started_from_ground)
        {
            state.air_action_spent = false;
            state.dash_started_from_ground = false;
            this.SetState(player, state, this.STATE_GROUND_IDLE, "ground_dash_completed_" + reason);
            return;
        }
        if (this.ShouldEnterChainHoldAfterSlash(player, state, this.GetCurrentTime(), reason))
        {
            state.air_action_spent = false;
            this.EnterAirHold(player, state, this.GetCurrentTime(), true);
            return;
        }
        if (reason == "landed") { this.SetState(player, state, this.STATE_GROUND_IDLE, "dash_completed_landed"); }
        else { this.SetState(player, state, this.STATE_AIR_SPENT, "dash_completed_" + reason); }
    },

    function IsEligibleForAirSkill(player)
    {
        local weapon = this.GetActiveWeapon(player);
        return this.IsEligibleSurvivor(player) && !this.IsOnLadder(player) && this.IsMeleeWeapon(weapon);
    },

    function EnterAirHold(player, state, now, chainMode)
    {
        state.hold_cycle_id += 1;
        state.hold_charge_started_at = now;
        state.hold_auto_dash_at = 0.0;
        state.dash_started_for_current_cycle = false;
        state.attack_input_consumed = false;
        local targetState = this.STATE_AIR_HOLD;
        local reason = "air_hold_started";
        local slowFallReason = "air_hold";
        if (chainMode)
        {
            targetState = this.STATE_AIR_HOLD_CHAIN;
            reason = "chain_hold_started";
            slowFallReason = "air_hold_chain";
        }
        this.SetState(player, state, targetState, reason);
        this.EnableSlowFall(player, state, slowFallReason);
        this.ArmFallProtection(player, state, slowFallReason);
        this.ShowOverlay(player, state);
        local nextSlash = state.air_session_attack_count + 1;
        this.PrintCenter(player, "GHOST WALK\nRELEASE SHIFT: DASH / LMB: ATTACK DASH");
        if (chainMode)
        {
            this.Log("[XNP GR CHAIN] chain_hold_entered ent=" + this.GetEntityIndexSafe(player).tostring() + " next_slash=" + nextSlash.tostring());
        }
        else
        {
            this.Log("air_hold_started");
        }
    },

    function LeaveAirHold(player, state, reason)
    {
        if (state.state_name == this.STATE_AIR_HOLD || state.state_name == this.STATE_AIR_HOLD_CHAIN)
        {
            this.Log("air_hold_ended reason=" + reason);
        }
        this.DisableSlowFall(player, state, reason);
        this.HideOverlay(player, state);
        this.ClearCenter(player);
    },

    function StopHoldLoop(player, state, reason)
    {
        if (state == null || !state.hold_loop_active) { return; }
        state.hold_loop_active = false;
        state.hold_rearm_at = 0.0;
        this.Log("hold_loop_stopped ent=" + this.GetEntityIndexSafe(player).tostring() + " reason=" + reason);
    },

    function ResetAirSessionOnLanding(player, state)
    {
        if (state.state_name == this.STATE_AIR_DASH)
        {
            this.FinishGRDashStrike(player, state, "landed");
        }
        if (!state.was_on_ground)
        {
            this.Log("landed air_session=" + state.air_session_nonce.tostring());
        }
        state.landed_event_consumed = true;
        state.air_session_active = false;
        state.air_session_id = 0;
        state.air_session_attack_count = 0;
        state.held_air_activation_consumed = false;
        state.held_air_activation_session_id = 0;
        state.held_air_activation_entered_at = 0.0;
        state.dash_started_from_ground = false;
        state.airborne_candidate_since = 0.0;
        state.airborne_confirmed_at = 0.0;
        state.airborne_consecutive_ticks = 0;
        state.is_authoritatively_grounded = true;
        this.ClearPendingJumpSkillPress(state);
        state.aerial_chain_available = false;
        state.aerial_chain_charges = 0;
        state.aerial_chain_expires_at = 0.0;
        state.aerial_chain_dash_free = false;
        this.BeginFallProtectionGroundGrace(player, state);
        state.air_action_spent = false;
        state.action_nonce = 0;
        state.action_hit_count = 0;
        state.action_special_count = 0;
        state.current_slash_index = 0;
        state.slash_qualified_this_dash = false;
        state.slash_qualified_target = -1;
        state.slash_qualified_type = "";
        state.skill_key_released_during_dash = false;
        state.target_hit_entindices = {};
        state.dash_previous_origin = null;
        state.dash_current_origin = null;
        state.dash_direction = null;
        state.dash_start_origin = null;
        state.dash_travelled_distance = 0.0;
        state.dash_start_time = 0.0;
        state.dash_trigger_source = "";
        state.dash_mode = "";
        state.dash_finish_done = false;
        state.dash_finish_requested = false;
        state.dash_finish_reason = "";
        state.dash_started_for_current_cycle = false;
        state.dash_started_from_ground = false;
        state.attack_input_consumed = false;
        state.dash_cost_applied = false;
        state.dash_aborted = false;
        state.ground_activation_consumed = false;
        state.ground_activation_press_serial = 0;
        state.dash_common_passthrough_count = 0;
        state.dash_common_passthrough_logged_nonce = 0;
        state.dash_passthrough_correction_logged_nonce = 0;
        state.common_aoe_pushed_targets = {};
        state.common_aoe_push_logged_nonce = 0;
        state.last_area_stun_scan_time = 0.0;
        state.area_stun_hit_targets = {};
        state.area_stun_target_count = 0;
        state.area_stun_special_count = 0;
        state.area_stun_common_count = 0;
        state.area_stun_logged_nonce = 0;
        state.last_world_trace_fraction = 1.0;
        state.last_world_trace_normal = null;
        state.tank_knockback_nonce = 0;
        state.tank_knockback_failed_reasons = {};
        if (!state.skill_key_down)
        {
            this.StopHoldLoop(player, state, "key_released");
        }
        else
        {
            state.hold_rearm_at = 0.0;
        }
        this.HideOverlay(player, state);
        this.ClearCenter(player);
        this.SetState(player, state, this.STATE_GROUND_IDLE, "landed");
    },

    function AbortDashAndResetTransientState(player, state, reason)
    {
        if (state == null) { return; }
        local oldNonce = state.action_nonce;
        state.dash_aborted = true;
        if (oldNonce > 0)
        {
            this.Log("dash_aborted nonce=" + oldNonce.tostring() + " reason=" + reason);
        }
        if (oldNonce > 0) { this.ApplyPostDashBrake(player, state, reason); }
        this.DisableSlowFall(player, state, "dash_aborted");
        this.HideOverlay(player, state);
        this.ClearCenter(player);
        state.action_nonce = 0;
        state.action_hit_count = 0;
        state.action_special_count = 0;
        state.target_hit_entindices = {};
        state.dash_previous_origin = null;
        state.dash_current_origin = null;
        state.dash_direction = null;
        state.dash_start_origin = null;
        state.dash_start_time = 0.0;
        state.dash_trigger_source = "";
        state.dash_mode = "";
        state.dash_finish_done = true;
        state.dash_finish_requested = false;
        state.dash_finish_reason = "";
        state.dash_cost_applied = false;
        state.dash_started_for_current_cycle = false;
        state.dash_started_from_ground = false;
        state.attack_input_consumed = false;
        this.ClearAttackDashInputContext(state);
        state.dash_common_passthrough_count = 0;
        state.dash_common_passthrough_logged_nonce = 0;
        state.dash_passthrough_correction_logged_nonce = 0;
        state.common_aoe_pushed_targets = {};
        state.common_aoe_push_logged_nonce = 0;
        state.last_area_stun_scan_time = 0.0;
        state.area_stun_hit_targets = {};
        state.area_stun_target_count = 0;
        state.area_stun_special_count = 0;
        state.area_stun_common_count = 0;
        state.area_stun_logged_nonce = 0;
        state.last_world_trace_fraction = 1.0;
        state.last_world_trace_normal = null;
        this.ClearTankImpactState(state);
        this.SetState(player, state, this.STATE_GROUND_IDLE, "dash_aborted_" + reason);
    },

    function GetAdjustedCooldownValue(nextAttack, now)
    {
        if (nextAttack == null || nextAttack <= now) { return null; }
        local interval = nextAttack - now;
        if (interval <= 0.0 || interval > 5.0) { return null; }
        local newInterval = interval / this.Settings.melee_speed_multiplier;
        if (newInterval < this.Settings.melee_speed_min_interval) { newInterval = this.Settings.melee_speed_min_interval; }
        local adjusted = now + newInterval;
        if (adjusted >= nextAttack) { return null; }
        return adjusted;
    },

    function ProcessFastMeleeCooldown(player, weapon, state, now, attackPressed)
    {
        if (!this.Settings.fast_melee_cooldown_enabled) { return; }
        if (attackPressed)
        {
            state.fast_melee_apply_serial += 1;
            state.fast_melee_pending_serial = state.fast_melee_apply_serial;
            state.fast_melee_pending_until = now + 0.25;
        }
        if (state.fast_melee_pending_serial <= 0 || state.fast_melee_applied_serial == state.fast_melee_pending_serial) { return; }
        if (now > state.fast_melee_pending_until)
        {
            state.fast_melee_applied_serial = state.fast_melee_pending_serial;
            return;
        }
        local changed = false;
        local primary = this.ReadFloatProp(weapon, "m_flNextPrimaryAttack", null);
        local oldRemaining = 0.0;
        local newRemaining = 0.0;
        if (primary != null && primary != state.fast_last_primary)
        {
            oldRemaining = primary - now;
            local adjusted = this.GetAdjustedCooldownValue(primary, now);
            if (adjusted != null && this.SetFloatProp(weapon, "m_flNextPrimaryAttack", adjusted))
            {
                state.fast_last_primary = adjusted;
                newRemaining = adjusted - now;
                changed = true;
            }
            else { state.fast_last_primary = primary; }
        }
        if (changed)
        {
            state.fast_melee_applied_serial = state.fast_melee_pending_serial;
            this.Log("melee_speed_applied ent=" + this.GetEntityIndexSafe(player).tostring() + " attack_serial=" + state.fast_melee_applied_serial.tostring() + " old_remaining=" + oldRemaining.tostring() + " new_remaining=" + newRemaining.tostring());
        }
    },

    function ProcessFastSwitch(player, weapon, state)
    {
        local index = this.GetEntityIndexSafe(weapon);
        local category = "other";
        if (this.IsMeleeWeapon(weapon)) { category = "melee"; }
        if (state.last_weapon_category == "other" && category == "melee" && state.last_weapon_entindex != index)
        {
            try
            {
                player.UseAdrenaline(this.Settings.fast_switch_adrenaline_seconds);
                this.Log("quickdraw_applied ent=" + this.GetEntityIndexSafe(player).tostring() + " weapon=" + this.GetClassname(weapon));
            }
            catch (error) {}
        }
        state.last_weapon_category = category;
        state.last_weapon_entindex = index;
    },

    function FinishInputFrame(state, buttons)
    {
        if (state == null) { return; }
        state.previous_buttons = buttons;
    },

    function ProbeEligibility(player, state, reason)
    {
        if (!this.Settings.probe_eligibility_debug) { return; }
        if (state == null || state.last_eligibility_reason == reason) { return; }
        local now = this.GetCurrentTime();
        state.last_eligibility_reason = reason;
        state.last_eligibility_log_time = now;
        this.Probe("eligibility ent=" + this.GetEntityIndexSafe(player).tostring() + " reason=" + reason);
    },

    function ProcessPlayer(player)
    {
        if (!this.RuntimeHandlerEnterLogged)
        {
            this.RuntimeHandlerEnterLogged = true;
            this.Log("runtime_handler_enter marker=" + this.BuildMarker);
        }
        if (!this.IsSurvivorPlayer(player)) { return; }
        local state = this.GetPlayerState(player);
        if (state == null) { return; }
        if (!this.IsEligibleSurvivor(player))
        {
            this.ProbeEligibility(player, state, "dead");
            this.HideSkillHUD(player, state);
            if (state.state_name != this.STATE_GROUND_IDLE)
            {
                this.ResetPlayer(player, "player_invalid");
            }
            return;
        }
        local now = this.GetCurrentTime();
        local weapon = this.GetActiveWeapon(player);
        local melee = this.IsMeleeWeapon(weapon);
        local onGround = this.IsOnGround(player);
        local buttons = this.ReadButtons(player);
        this.ShowVersionNotice(player, state, now, "process_player");
        state.current_buttons = buttons;
        local previousButtons = state.previous_buttons;
        local walkDown = (buttons & this.Settings.walk_button_mask) != 0;
        local attackDown = (buttons & this.Settings.attack_button_mask) != 0;
        local previousWalkDown = (previousButtons & this.Settings.walk_button_mask) != 0;
        local previousAttackDown = (previousButtons & this.Settings.attack_button_mask) != 0;
        local walkPressed = walkDown && !previousWalkDown;
        local walkReleased = !walkDown && previousWalkDown;
        local attackPressed = attackDown && !previousAttackDown;
        state.skill_key_down = walkDown;
        state.skill_key_was_down = previousWalkDown;
        state.attack_key_down = attackDown;
        state.attack_key_was_down = previousAttackDown;
        this.UpdateAuthoritativeAirborneState(player, state, now);
        onGround = state.is_authoritatively_grounded;
        state.is_on_ground = onGround;
        this.UpdateSkillChargeRecharge(player, state, now);
        this.UpdateSkillHUD(player, state, now);
        if (walkPressed) { state.ground_activation_consumed = false; }
        if (walkPressed) { this.RegisterSkillKeyPress(player, state, now, walkPressed); }
        if (walkReleased)
        {
            if (state.pending_jump_skill_press)
            {
                this.Log("[XNP GR GATE] jump_buffer_cancelled ent=" + this.GetEntityIndexSafe(player).tostring() + " reason=key_released");
                this.ClearPendingJumpSkillPress(state);
            }
            state.ground_press_blocked_until_release = false;
            state.ground_press_rejected_logged = false;
            state.suppress_skill_until_release_after_tongue_escape = false;
        }
        if (walkPressed && state.tongue_escape_armed)
        {
            this.TryManualTongueEscapeFromSkillInput(player, state, now);
            this.FinishInputFrame(state, buttons);
            return;
        }
        state.was_on_ground = onGround;
        if (this.IsUsableEntity(weapon))
        {
            this.ProcessFastSwitch(player, weapon, state);
        }
        if (walkPressed) { this.Probe("walk_pressed ent=" + this.GetEntityIndexSafe(player).tostring()); }
        if (walkReleased) { this.Probe("walk_released ent=" + this.GetEntityIndexSafe(player).tostring()); }
        if (attackPressed) { this.Probe("attack_pressed ent=" + this.GetEntityIndexSafe(player).tostring()); }
        if (attackPressed && melee)
        {
            state.melee_attack_serial += 1;
            state.melee_attack_started_at = now;
            state.melee_special_hit_keys = {};
        }
        if (walkPressed && !this.HasSkillChargeAvailable(player, state, "normal")) { this.ProbeEligibility(player, state, "charge_empty"); }
        if (walkReleased)
        {
            this.StopHoldLoop(player, state, "key_released");
            if (state.state_name == this.STATE_AIR_DASH)
            {
                state.skill_key_released_during_dash = true;
            }
        }
        this.MaintainFallProtection(player, state);
        this.MaintainSmokerBreakoutState(player, state, now);
        this.MaintainTankStun(state);
        this.ProcessTankAreaKnockbackVerify(player, state, now);
        this.ProcessTankPlayerRecoilVerify(player, state, now);
        this.ProcessTankImpact(player, state, now);
        this.ProcessDash(player, state, now);
        if (state.state_name == this.STATE_AIR_DASH)
        {
            this.FinishInputFrame(state, buttons);
            return;
        }
        if (state.suppress_skill_until_release_after_tongue_escape && walkDown)
        {
            this.FinishInputFrame(state, buttons);
            return;
        }
        if (state.state_name == this.STATE_AIR_HOLD || state.state_name == this.STATE_AIR_HOLD_CHAIN)
        {
            if (onGround)
            {
                this.CancelAirHoldOnGroundContact(player, state);
                this.FinishInputFrame(state, buttons);
                return;
            }
            if (attackPressed && walkDown && !state.attack_input_consumed && !state.dash_started_for_current_cycle)
            {
                state.attack_input_consumed = true;
                this.LeaveAirHold(player, state, "dash_attack");
                this.StartGRDashStrike(player, state, "attack");
                this.FinishInputFrame(state, buttons);
                return;
            }
            if (walkReleased && !state.dash_started_for_current_cycle)
            {
                if (this.IsSkillAirborneConfirmed(player, state, now))
                {
                    this.LeaveAirHold(player, state, "dash_release");
                    this.StartGRDashStrike(player, state, "normal");
                }
                else
                {
                    this.CancelAirHoldOnGroundContact(player, state);
                }
                this.FinishInputFrame(state, buttons);
                return;
            }
        }
        if (melee && !((state.state_name == this.STATE_AIR_HOLD || state.state_name == this.STATE_AIR_HOLD_CHAIN) && attackPressed)) { this.ProcessFastMeleeCooldown(player, weapon, state, now, attackPressed); }
        if (!melee || this.IsOnLadder(player))
        {
            if (!melee) { this.ProbeEligibility(player, state, "not_melee"); }
            else { this.ProbeEligibility(player, state, "ladder"); }
            this.ClearPendingJumpSkillPress(state);
            if (state.state_name == this.STATE_AIR_HOLD || state.state_name == this.STATE_AIR_HOLD_CHAIN) { this.LeaveAirHold(player, state, "air_hold_cancelled"); }
            if (state.state_name == this.STATE_GROUND_HOLD) { this.LeaveGroundHold(player, state, "ground_hold_cancelled_weapon"); }
            if (state.state_name != this.STATE_AIR_DASH) { this.HideOverlay(player, state); }
            this.FinishInputFrame(state, buttons);
            return;
        }
        if (onGround)
        {
            this.ProbeEligibility(player, state, "ground");
            if (state.state_name == this.STATE_AIR_HOLD || state.state_name == this.STATE_AIR_HOLD_CHAIN)
            {
                this.CancelAirHoldOnGroundContact(player, state);
            }
            if (state.state_name == this.STATE_GROUND_HOLD)
            {
                if (attackPressed && walkDown)
                {
                    this.StartGroundDash(player, state, "attack");
                    this.FinishInputFrame(state, buttons);
                    return;
                }
                if (walkReleased)
                {
                    this.StartGroundDash(player, state, "normal");
                    this.FinishInputFrame(state, buttons);
                    return;
                }
                if (!walkDown)
                {
                    this.LeaveGroundHold(player, state, "ground_hold_cancelled_key");
                    this.FinishInputFrame(state, buttons);
                    return;
                }
                this.FinishInputFrame(state, buttons);
                return;
            }
            if (walkDown && this.TryEnterGroundHold(player, state, now))
            {
                if (attackPressed)
                {
                    this.StartGroundDash(player, state, "attack");
                }
                this.FinishInputFrame(state, buttons);
                return;
            }
            if (!walkDown)
            {
                this.ProbeEligibility(player, state, "walk_not_down");
            }
            this.FinishInputFrame(state, buttons);
            return;
        }
        if (state.air_action_spent)
        {
            this.ProbeEligibility(player, state, "air_spent");
            this.FinishInputFrame(state, buttons);
            return;
        }
        if (state.state_name == this.STATE_AIR_HOLD || state.state_name == this.STATE_AIR_HOLD_CHAIN)
        {
            this.ApplySlowFall(player, state);
            this.ShowOverlay(player, state);
            this.FinishInputFrame(state, buttons);
            return;
        }
        if (this.CanStartSkill(player, state, now, walkPressed))
        {
            this.FinishInputFrame(state, buttons);
            return;
        }
        else if (!walkDown)
        {
            this.ProbeEligibility(player, state, "walk_not_down");
        }
        this.FinishInputFrame(state, buttons);
    },

    function Think()
    {
        if (this.Settings == null || !this.Settings.enabled) { return this.Defaults.think_interval; }
        local now = this.GetCurrentTime();
        this.CleanupSpecialHitDedup(now);
        this.CleanupDashDamageContext(now);
        this.MaintainSmokerBreakoutPending(now);
        this.MaintainAreaStunControllers(now);
        this.MaintainDashSkillFxCleanup(now);
        local player = null;
        while ((player = Entities.FindByClassname(player, "player")) != null)
        {
            this.ProcessPlayer(player);
        }
        return this.Settings.think_interval;
    },

    function GetThinkInterval()
    {
        if (this.Settings == null) { return this.Defaults.think_interval; }
        return this.Settings.think_interval;
    },

    function ResetPlayer(player, reason)
    {
        local state = this.GetPlayerState(player);
        if (state == null) { return; }
        if (state.state_name == this.STATE_GROUND_IDLE && state.last_reset_reason == reason) { return; }
        if (state.state_name == this.STATE_AIR_DASH)
        {
            this.AbortDashAndResetTransientState(player, state, reason);
        }
        this.HideOverlay(player, state);
        this.ClearCenter(player);
        state.state_name = this.STATE_GROUND_IDLE;
        state.state_start_time = this.GetCurrentTime();
        state.air_action_spent = false;
        state.action_nonce = 0;
        state.action_hit_count = 0;
        state.action_special_count = 0;
        state.target_hit_entindices = {};
        state.dash_previous_origin = null;
        state.dash_current_origin = null;
        state.dash_direction = null;
        state.dash_start_origin = null;
        state.dash_start_time = 0.0;
        state.dash_trigger_source = "";
        state.dash_mode = "";
        state.dash_finish_done = false;
        state.dash_finish_requested = false;
        state.dash_finish_reason = "";
        state.dash_started_for_current_cycle = false;
        state.dash_started_from_ground = false;
        state.attack_input_consumed = false;
        state.dash_cost_applied = false;
        state.dash_aborted = false;
        state.ground_activation_consumed = false;
        state.ground_activation_press_serial = 0;
        state.dash_common_passthrough_count = 0;
        state.dash_common_passthrough_logged_nonce = 0;
        state.dash_passthrough_correction_logged_nonce = 0;
        state.common_aoe_pushed_targets = {};
        state.common_aoe_push_logged_nonce = 0;
        state.last_area_stun_scan_time = 0.0;
        state.area_stun_hit_targets = {};
        state.area_stun_target_count = 0;
        state.area_stun_special_count = 0;
        state.area_stun_common_count = 0;
        state.area_stun_logged_nonce = 0;
        state.last_world_trace_fraction = 1.0;
        state.last_world_trace_normal = null;
        state.last_safe_dash_origin = null;
        state.last_safe_dash_time = 0.0;
        state.post_dash_brake_nonce = 0;
        state.tank_overlap_checked_nonce = 0;
        state.tank_overlap_resolved_nonce = 0;
        state.tank_overlap_failed_nonce = 0;
        state.tank_knockback_nonce = 0;
        state.tank_knockback_failed_reasons = {};
        this.MaintainTankStun(state);
        if (this.IsUsableEntity(state.tank_stun_target))
        {
            this.SetFloatProp(state.tank_stun_target, "m_flLaggedMovementValue", state.tank_stun_original_speed);
        }
        state.tank_stun_target = null;
        state.tank_stun_target_entindex = -1;
        state.tank_stun_until = 0.0;
        state.tank_stun_original_speed = 1.0;
        state.tank_recoil_nonce = 0;
        this.ClearPendingTankTarget(state);
        state.pending_tank_contact_nonce = 0;
        state.pending_tank_candidate_log_nonce = 0;
        state.pending_tank_not_reached_nonce = 0;
        state.pending_tank_damage_context_nonce = 0;
        state.tank_melee_minor_stagger_until = 0.0;
        state.last_safe_dash_origin = null;
        state.last_safe_dash_time = 0.0;
        state.post_dash_brake_nonce = 0;
        state.tank_overlap_checked_nonce = 0;
        state.tank_overlap_resolved_nonce = 0;
        state.tank_overlap_failed_nonce = 0;
        this.ClearTankImpactState(state);
        state.fall_protection_active = false;
        state.fall_damage_guard_active = false;
        state.slow_fall_active = false;
        state.fall_protection_until = 0.0;
        state.fall_protection_air_until = 0.0;
        state.fall_protection_ground_contact_time = 0.0;
        state.fall_protection_ground_until = 0.0;
        state.fall_protection_pending_finish = false;
        state.fall_protection_source = "";
        state.fall_protection_armed_logged = false;
        state.fall_protection_consumed_logged = false;
        state.fall_protection_block_logged = false;
        state.fall_protection_failure_logged = false;
        state.fall_velocity_clamp_count = 0;
        state.hold_loop_active = false;
        state.hold_rearm_at = 0.0;
        state.hold_auto_dash_at = 0.0;
        state.skill_hud_temp_gain = 0;
        state.smoker_breakout_aftershock_active = false;
        state.smoker_breakout_aftershock_until = 0.0;
        state.smoker_breakout_aftershock_next_at = 0.0;
        state.smoker_breakout_aftershock_targets = {};
        state.smoker_breakout_aftershock_nonce = 0;
        state.tongue_escape_armed = false;
        state.tongue_escape_token = 0;
        state.tongue_escape_victim_userid = 0;
        state.tongue_escape_smoker_userid = 0;
        state.tongue_escape_smoker_entindex = -1;
        state.tongue_escape_grabbed_at = 0.0;
        state.tongue_escape_consumed = false;
        state.tongue_escape_last_skill_press_at = 0.0;
        state.tongue_escape_waiting_for_fresh_press = false;
        state.tongue_escape_duplicate_logged = false;
        state.tongue_escape_reject_reasons = {};
        state.suppress_skill_until_release_after_tongue_escape = false;
        state.aerial_chain_dash_free = false;
        state.air_session_active = false;
        state.air_session_id = 0;
        state.air_session_attack_count = 0;
        state.held_air_activation_consumed = false;
        state.held_air_activation_session_id = 0;
        state.held_air_activation_entered_at = 0.0;
        state.airborne_candidate_since = 0.0;
        state.airborne_confirmed_at = 0.0;
        state.airborne_consecutive_ticks = 0;
        state.is_authoritatively_grounded = true;
        state.ground_press_blocked_until_release = false;
        state.ground_press_rejected_logged = false;
        this.ClearPendingJumpSkillPress(state);
        state.current_slash_index = 0;
        state.slash_qualified_this_dash = false;
        state.slash_qualified_target = -1;
        state.slash_qualified_type = "";
        state.skill_key_released_during_dash = false;
        state.landed_event_consumed = true;
        this.HideSkillHUD(player, state);
        this.ResetSkillCooldownState(state);
        if (reason == "round_start" || reason == "map_transition" || reason == "player_spawn" || reason == "player_team" || reason == "defibrillator_used")
        {
            this.InitializeSkillCharges(state, true);
        }
        this.ResetComboState(player, state, reason);
        state.last_reset_reason = reason;
        this.Log("state_reset reason=" + reason);
    },

    function ResetAll(reason)
    {
        this.DashDamageContext = {};
        this.SpecialHitDedup = {};
        this.SmokerBreakoutPending = {};
        this.ClearAreaStunControllers(reason);
        this.AreaFxCleanup = {};
        local player = null;
        while ((player = Entities.FindByClassname(player, "player")) != null)
        {
            if (this.IsSurvivorPlayer(player)) { this.ResetPlayer(player, reason); }
        }
    },

    function NotifyAll()
    {
        if (!this.Settings.load_message) { return; }
        if (this.BalanceNoticeShown) { return; }
        local player = null;
        while ((player = Entities.FindByClassname(player, "player")) != null)
        {
            if (!this.IsSurvivorPlayer(player)) { continue; }
            local index = this.GetEntityIndexSafe(player);
            if (index < 0) { continue; }
            try { ClientPrint(player, 3, this.Settings.load_message_text); } catch (error) {}
            this.NotifiedUsers[index] <- true;
        }
        this.BalanceNoticeShown = true;
    },

    function ShowVersionNotice(player, state, now, reason)
    {
        if (!this.Settings.version_notice_enabled || state == null) { return; }
        if (!this.IsHumanPlayer(player) || !this.IsEligibleSurvivor(player)) { return; }
        if (this.Settings.version_notice_once_per_map && state.version_notice_shown) { return; }
        try { ClientPrint(player, 3, this.Settings.version_notice_line1); } catch (error) {}
        try { ClientPrint(player, 3, this.Settings.version_notice_line2); } catch (error2) {}
        state.version_notice_shown = true;
        state.version_notice_until = now + this.Settings.version_notice_show_seconds;
        this.Log("[XNP GR NOTICE] shown ent=" + this.GetEntityIndexSafe(player).tostring() + " reason=" + reason);
    },

    function StartThinker()
    {
        if (this.Thinker != null && this.IsUsableEntity(this.Thinker)) { return; }
        local thinker = null;
        try { thinker = SpawnEntityFromTable("info_target", { targetname = this.ThinkName }); } catch (error) { thinker = null; }
        if (!this.IsUsableEntity(thinker))
        {
            this.Log("BLOCKER thinker_spawn_failed");
            return;
        }
        try
        {
            thinker.ValidateScriptScope();
            local scope = thinker.GetScriptScope();
            scope["XNP_GhostrunnerExecutionBranchThink"] <- function()
            {
                if ("XNP_GhostrunnerExecutionBranch" in getroottable())
                {
                    ::XNP_GhostrunnerExecutionBranch.Think();
                    return ::XNP_GhostrunnerExecutionBranch.GetThinkInterval();
                }
                return 1.0;
            };
            AddThinkToEnt(thinker, "XNP_GhostrunnerExecutionBranchThink");
            this.Probe("think_registered entity=" + this.ThinkName);
        }
        catch (error2)
        {
            this.Log("BLOCKER thinker_install_failed error=" + error2);
            return;
        }
        this.Thinker = thinker;
    },

    function RegisterEvents()
    {
        if (this.EventsRegistered) { return; }
        __CollectEventCallbacks(this, "OnGameEvent_", "GameEventCallbacks", RegisterScriptGameEventListener);
        this.EventsRegistered = true;
    },

    function Init()
    {
        this.LoadSettings();
        this.RegisterEvents();
        this.StartThinker();
        this.Log("fall_damage_hook_installed method=root_AllowTakeDamage");
        this.NotifyAll();
        this.Log("init complete version=" + this.Version + " build_marker=" + this.BuildMarker);
    },

    function OnGameEvent_round_start(params) { this.ResetAll("round_start"); },
    function OnGameEvent_round_end(params) { this.ResetAll("round_end"); },
    function OnGameEvent_map_transition(params) { this.ResetAll("map_transition"); },
    function OnGameEvent_mission_lost(params) { this.ResetAll("mission_lost"); },
    function OnGameEvent_player_spawn(params)
    {
        local player = null;
        try { player = GetPlayerFromUserID(params.userid); } catch (error) { player = null; }
        if (player != null) { this.ResetPlayer(player, "player_spawn"); }
    },
    function OnGameEvent_defibrillator_used(params)
    {
        local player = null;
        try { player = GetPlayerFromUserID(params.subject); } catch (error) { player = null; }
        if (player != null) { this.ResetPlayer(player, "defibrillator_used"); }
    },
    function OnGameEvent_player_team(params)
    {
        local player = null;
        try { player = GetPlayerFromUserID(params.userid); } catch (error) { player = null; }
        if (player != null) { this.ResetPlayer(player, "player_team"); }
    },
    function OnGameEvent_player_hurt(params)
    {
        local attacker = null;
        local victim = null;
        try
        {
            attacker = GetPlayerFromUserID(params.attacker);
        }
        catch (error)
        {
            attacker = null;
        }
        try
        {
            victim = GetPlayerFromUserID(params.userid);
        }
        catch (error2)
        {
            victim = null;
        }
        if (this.IsMarkedInternalDamage(attacker, victim)) { return; }
        if (!this.IsMeleeDamageEvent(attacker, params)) { return; }
        if (!this.IsQualifiedSpecialInfected(victim)) { return; }
        local state = this.GetPlayerState(attacker);
        if (state == null) { return; }
        local damageAmount = this.GetDamageAmountFromParams(params);
        if (damageAmount <= 0.0) { return; }
        if (this.IsNativeMeleeEventFromAttackDashContext(attacker, victim, state, damageAmount)) { return; }
        if (this.IsDamageFromActiveDashContext(attacker, victim)) { return; }
        local attackId = state.melee_attack_serial;
        if (attackId <= 0) { attackId = (this.GetCurrentTime() * 10.0).tointeger(); }
        this.HandleQualifiedSpecialHit(attacker, victim, "melee", attackId, damageAmount);
    },
    function OnGameEvent_infected_hurt(params)
    {
        local attacker = null;
        try
        {
            attacker = GetPlayerFromUserID(params.attacker);
        }
        catch (error)
        {
            attacker = null;
        }
        local victim = null;
        if ("entityid" in params) { victim = this.GetEntityFromIndex(params.entityid); }
        if (this.IsMarkedInternalDamage(attacker, victim)) { return; }
        if (!this.IsMeleeDamageEvent(attacker, params)) { return; }
        if (!this.IsQualifiedSpecialInfected(victim)) { return; }
        local state = this.GetPlayerState(attacker);
        if (state == null) { return; }
        local damageAmount = this.GetDamageAmountFromParams(params);
        if (damageAmount <= 0.0) { return; }
        if (this.IsNativeMeleeEventFromAttackDashContext(attacker, victim, state, damageAmount)) { return; }
        if (this.IsDamageFromActiveDashContext(attacker, victim)) { return; }
        local attackId = state.melee_attack_serial;
        if (attackId <= 0) { attackId = (this.GetCurrentTime() * 10.0).tointeger(); }
        this.HandleQualifiedSpecialHit(attacker, victim, "melee", attackId, damageAmount);
    },
    function OnGameEvent_player_death(params)
    {
        local player = null;
        try { player = GetPlayerFromUserID(params.userid); } catch (error) { player = null; }
        if (player != null)
        {
            this.ClearTongueEscapeForSmoker(player, "smoker_death");
            this.ResetPlayer(player, "player_death");
        }
    },
    function OnGameEvent_player_incapacitated(params)
    {
        local player = null;
        try { player = GetPlayerFromUserID(params.userid); } catch (error) { player = null; }
        if (player != null)
        {
            local state = this.GetPlayerState(player);
            if (state != null && state.fall_protection_active && !state.fall_protection_failure_logged)
            {
                state.fall_protection_failure_logged = true;
                state.fall_guard_health_after = this.GetHealthSafe(player);
                local now = this.GetCurrentTime();
                local graceRemaining = state.fall_protection_ground_until - now;
                if (graceRemaining < 0.0) { graceRemaining = 0.0; }
                this.Log("FALL_GUARD_FAILURE ent=" + this.GetEntityIndexSafe(player).tostring() + " session=" + state.fall_protection_session.tostring() + " health_before=" + state.fall_guard_health_before.tostring() + " health_after=" + state.fall_guard_health_after.tostring() + " damage_type=" + state.fall_guard_last_damage_type.tostring() + " damage_amount=" + state.fall_guard_last_damage_amount.tostring() + " state=" + state.state_name + " ground_grace_remaining=" + graceRemaining.tostring() + " hook_seen=" + state.fall_guard_hook_seen.tostring() + " physical_cushion_used=" + state.fall_guard_cushion_used.tostring());
            }
            this.ResetPlayer(player, "player_incapacitated");
        }
    },
    function OnGameEvent_tongue_grab(params)
    {
        this.HandleSmokerBreakoutGrab(params, "tongue_grab");
    },
    function OnGameEvent_choke_start(params)
    {
        this.HandleSmokerBreakoutGrab(params, "choke_start");
    },
    function OnGameEvent_tongue_release(params)
    {
        this.ConfirmSmokerBreakoutRelease(params, "tongue_release");
    },
    function OnGameEvent_choke_end(params)
    {
        this.ConfirmSmokerBreakoutRelease(params, "choke_end");
    },
    function OnGameEvent_player_disconnect(params) { this.ResetAll("player_disconnect"); },
    function OnGameEvent_bot_player_replace(params) { this.ResetAll("bot_player_replace"); },
    function OnGameEvent_player_bot_replace(params) { this.ResetAll("player_bot_replace"); },
};

::XNP_GhostrunnerExecutionBranch <- XNP_GhostrunnerExecutionBranchTable;
::AllowTakeDamage <- function(damageTable)
{
    if ("XNP_GhostrunnerExecutionBranch" in getroottable())
    {
        return ::XNP_GhostrunnerExecutionBranch.AllowTakeDamage(damageTable);
    }
    return true;
};
::XNP_GhostrunnerExecutionBranch.Init();
