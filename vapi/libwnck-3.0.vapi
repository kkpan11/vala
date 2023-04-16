/* libwnck-3.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Wnck", gir_namespace = "Wnck", gir_version = "3.0", lower_case_cprefix = "wnck_")]
namespace Wnck {
	namespace Version {
		[CCode (cheader_filename = "libwnck/libwnck.h", cname = "WNCK_MAJOR_VERSION")]
		[Version (since = "3.0")]
		public const int MAJOR_VERSION;
		[CCode (cheader_filename = "libwnck/libwnck.h", cname = "WNCK_MICRO_VERSION")]
		[Version (since = "3.0")]
		public const int MICRO_VERSION;
		[CCode (cheader_filename = "libwnck/libwnck.h", cname = "WNCK_MINOR_VERSION")]
		[Version (since = "3.0")]
		public const int MINOR_VERSION;
	}
	[CCode (cheader_filename = "libwnck/libwnck.h", type_id = "wnck_action_menu_get_type ()")]
	public class ActionMenu : Gtk.Menu, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		[Version (since = "2.22")]
		public ActionMenu (Wnck.Window window);
		[NoAccessorMethod]
		public void* window { get; construct; }
	}
	[CCode (cheader_filename = "libwnck/libwnck.h", type_id = "wnck_application_get_type ()")]
	public class Application : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Application ();
		public static unowned Wnck.Application @get (ulong xwindow);
		public unowned Gdk.Pixbuf get_icon ();
		public bool get_icon_is_fallback ();
		public unowned string get_icon_name ();
		public unowned Gdk.Pixbuf get_mini_icon ();
		public int get_n_windows ();
		public unowned string get_name ();
		public int get_pid ();
		[Version (since = "2.2")]
		public unowned string get_startup_id ();
		public unowned GLib.List<Wnck.Window> get_windows ();
		public ulong get_xid ();
		public virtual signal void icon_changed ();
		public virtual signal void name_changed ();
	}
	[CCode (cheader_filename = "libwnck/libwnck.h", type_id = "wnck_class_group_get_type ()")]
	public class ClassGroup : GLib.Object {
		[CCode (has_construct_function = false)]
		protected ClassGroup ();
		[Version (since = "2.2")]
		public static unowned Wnck.ClassGroup @get (string id);
		[Version (since = "2.2")]
		public unowned Gdk.Pixbuf get_icon ();
		[Version (since = "3.2")]
		public unowned string get_id ();
		[Version (since = "2.2")]
		public unowned Gdk.Pixbuf get_mini_icon ();
		[Version (since = "2.2")]
		public unowned string get_name ();
		[Version (deprecated = true, deprecated_since = "3.2", since = "2.2")]
		public unowned string get_res_class ();
		[Version (since = "2.2")]
		public unowned GLib.List<Wnck.Window> get_windows ();
		public virtual signal void icon_changed ();
		public virtual signal void name_changed ();
	}
	[CCode (cheader_filename = "libwnck/libwnck.h", type_id = "wnck_handle_get_type ()")]
	public sealed class Handle : GLib.Object {
		[CCode (has_construct_function = false)]
		public Handle (Wnck.ClientType client_type);
		public unowned Wnck.Application get_application (ulong xwindow);
		public unowned Wnck.ClassGroup get_class_group (string id);
		public unowned Wnck.Screen? get_default_screen ();
		public unowned Wnck.Screen get_screen (int index);
		public unowned Wnck.Screen get_screen_for_root (ulong root_window_id);
		public unowned Wnck.Window get_window (ulong xwindow);
		public void set_default_icon_size (size_t icon_size);
		public void set_default_mini_icon_size (size_t icon_size);
		[NoAccessorMethod]
		public Wnck.ClientType client_type { get; set construct; }
	}
	[CCode (cheader_filename = "libwnck/libwnck.h", type_id = "wnck_image_menu_item_get_type ()")]
	public sealed class ImageMenuItem : Gtk.MenuItem, Atk.Implementor, Gtk.Actionable, Gtk.Activatable, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public ImageMenuItem ();
		public void make_label_bold ();
		public void make_label_normal ();
		public void set_image_from_icon_pixbuf (Gdk.Pixbuf pixbuf);
		public void set_image_from_window (Wnck.Window window);
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public ImageMenuItem.with_label (string label);
	}
	[CCode (cheader_filename = "libwnck/libwnck.h", type_id = "wnck_pager_get_type ()")]
	public class Pager : Gtk.Widget, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public Pager ();
		[Version (since = "3.24.0")]
		public bool get_wrap_on_scroll ();
		public void set_display_mode (Wnck.PagerDisplayMode mode);
		public bool set_n_rows (int n_rows);
		public bool set_orientation (Gtk.Orientation orientation);
		[Version (since = "3.36")]
		public void set_scroll_mode (Wnck.PagerScrollMode scroll_mode);
		[Version (since = "2.2")]
		public void set_shadow_type (Gtk.ShadowType shadow_type);
		public void set_show_all (bool show_all_workspaces);
		[Version (since = "3.24.0")]
		public void set_wrap_on_scroll (bool wrap_on_scroll);
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public Pager.with_handle (Wnck.Handle handle);
		[NoAccessorMethod]
		public Wnck.Handle handle { owned get; construct; }
	}
	[CCode (cheader_filename = "libwnck/libwnck.h", type_id = "wnck_screen_get_type ()")]
	public class Screen : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Screen ();
		[Version (deprecated = true, deprecated_since = "2.20", since = "2.12")]
		public void calc_workspace_layout (int num_workspaces, int space_index, Wnck.WorkspaceLayout layout);
		[Version (since = "2.2")]
		public void change_workspace_count (int count);
		public void force_update ();
		[Version (deprecated = true, deprecated_since = "2.20", since = "2.12")]
		public static void free_workspace_layout (Wnck.WorkspaceLayout layout);
		public static unowned Wnck.Screen @get (int index);
		public unowned Wnck.Window get_active_window ();
		public unowned Wnck.Workspace get_active_workspace ();
		public ulong get_background_pixmap ();
		public static unowned Wnck.Screen? get_default ();
		public static unowned Wnck.Screen get_for_root (ulong root_window_id);
		public unowned Wnck.Handle get_handle ();
		public int get_height ();
		[Version (since = "2.20")]
		public int get_number ();
		[Version (since = "2.8")]
		public unowned Wnck.Window get_previously_active_window ();
		[Version (since = "2.2")]
		public bool get_showing_desktop ();
		public int get_width ();
		[Version (since = "2.20")]
		public unowned string get_window_manager_name ();
		public unowned GLib.List<Wnck.Window> get_windows ();
		public unowned GLib.List<Wnck.Window> get_windows_stacked ();
		public unowned Wnck.Workspace get_workspace (int workspace);
		public int get_workspace_count ();
		[Version (since = "2.20")]
		public unowned GLib.List<Wnck.Workspace> get_workspaces ();
		[Version (since = "2.4")]
		public void move_viewport (int x, int y);
		public bool net_wm_supports (string atom);
		public void release_workspace_layout (int current_token);
		[Version (since = "2.2")]
		public void toggle_showing_desktop (bool show);
		public int try_set_workspace_layout (int current_token, int rows, int columns);
		public virtual signal void active_window_changed (Wnck.Window previous_window);
		public virtual signal void active_workspace_changed (Wnck.Workspace previous_workspace);
		public virtual signal void application_closed (Wnck.Application app);
		public virtual signal void application_opened (Wnck.Application app);
		public virtual signal void background_changed ();
		[Version (since = "2.20")]
		public virtual signal void class_group_closed (Wnck.ClassGroup class_group);
		[Version (since = "2.20")]
		public virtual signal void class_group_opened (Wnck.ClassGroup class_group);
		[Version (since = "2.20")]
		public virtual signal void showing_desktop_changed ();
		[Version (since = "2.20")]
		public virtual signal void viewports_changed ();
		public virtual signal void window_closed (Wnck.Window window);
		[Version (since = "2.20")]
		public virtual signal void window_manager_changed ();
		public virtual signal void window_opened (Wnck.Window window);
		public virtual signal void window_stacking_changed ();
		public virtual signal void workspace_created (Wnck.Workspace space);
		public virtual signal void workspace_destroyed (Wnck.Workspace space);
	}
	[CCode (cheader_filename = "libwnck/libwnck.h", type_id = "wnck_selector_get_type ()")]
	public class Selector : Gtk.MenuBar, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		[Version (since = "2.10")]
		public Selector ();
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public Selector.with_handle (Wnck.Handle handle);
		[NoAccessorMethod]
		public Wnck.Handle handle { owned get; construct; }
	}
	[CCode (cheader_filename = "libwnck/libwnck.h", type_id = "wnck_tasklist_get_type ()")]
	public class Tasklist : Gtk.Container, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public Tasklist ();
		[Version (since = "3.24.0")]
		public bool get_scroll_enabled ();
		[Version (deprecated = true, deprecated_since = "3.42")]
		public int get_size_hint_list (int n_elements);
		[Version (since = "43.1")]
		public bool get_tooltips_enabled ();
		[Version (since = "2.12")]
		public void set_button_relief (Gtk.ReliefStyle relief);
		public void set_grouping (Wnck.TasklistGroupingType grouping);
		public void set_grouping_limit (int limit);
		public void set_include_all_workspaces (bool include_all_workspaces);
		[Version (since = "3.4.6")]
		public void set_middle_click_close (bool middle_click_close);
		[Version (since = "3.4.6")]
		public void set_orientation (Gtk.Orientation orient);
		[Version (since = "3.24.0")]
		public void set_scroll_enabled (bool scroll_enabled);
		public void set_switch_workspace_on_unminimize (bool switch_workspace_on_unminimize);
		[Version (since = "43.1")]
		public void set_tooltips_enabled (bool tooltips_enabled);
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public Tasklist.with_handle (Wnck.Handle handle);
		[NoAccessorMethod]
		public Wnck.Handle handle { owned get; construct; }
		public bool tooltips_enabled { get; set; }
		public signal void task_enter_notify ([CCode (type = "gpointer")] GLib.List<weak Wnck.Window> windows);
		public signal void task_leave_notify ([CCode (type = "gpointer")] GLib.List<weak Wnck.Window> windows);
	}
	[CCode (cheader_filename = "libwnck/libwnck.h", type_id = "wnck_window_get_type ()")]
	public class Window : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Window ();
		[Version (since = "2.10")]
		public void activate (uint32 timestamp);
		[Version (since = "2.10")]
		public void activate_transient (uint32 timestamp);
		[Version (since = "2.6")]
		public void close (uint32 timestamp);
		public static unowned Wnck.Window @get (ulong xwindow);
		public Wnck.WindowActions get_actions ();
		public unowned Wnck.Application get_application ();
		[Version (since = "2.2")]
		public unowned Wnck.ClassGroup get_class_group ();
		public unowned string get_class_group_name ();
		public unowned string get_class_instance_name ();
		[Version (since = "2.20")]
		public void get_client_window_geometry (out int xp, out int yp, out int widthp, out int heightp);
		public void get_geometry (out int xp, out int yp, out int widthp, out int heightp);
		public ulong get_group_leader ();
		public unowned Gdk.Pixbuf get_icon ();
		public bool get_icon_is_fallback ();
		public unowned string get_icon_name ();
		public unowned Gdk.Pixbuf get_mini_icon ();
		public unowned string get_name ();
		public int get_pid ();
		public unowned string get_role ();
		public unowned Wnck.Screen get_screen ();
		public unowned string get_session_id ();
		public unowned string get_session_id_utf8 ();
		[Version (since = "2.10")]
		public int get_sort_order ();
		public Wnck.WindowState get_state ();
		[Version (since = "2.12")]
		public unowned Wnck.Window get_transient ();
		public Wnck.WindowType get_window_type ();
		public unowned Wnck.Workspace get_workspace ();
		public ulong get_xid ();
		[Version (since = "2.16")]
		public bool has_icon_name ();
		[Version (since = "2.16")]
		public bool has_name ();
		[Version (since = "2.14")]
		public bool is_above ();
		public bool is_active ();
		[Version (since = "2.20")]
		public bool is_below ();
		[Version (since = "2.8")]
		public bool is_fullscreen ();
		[Version (since = "2.4")]
		public bool is_in_viewport (Wnck.Workspace workspace);
		public bool is_maximized ();
		public bool is_maximized_horizontally ();
		public bool is_maximized_vertically ();
		public bool is_minimized ();
		[Version (since = "2.8")]
		public bool is_most_recently_activated ();
		public bool is_on_workspace (Wnck.Workspace workspace);
		public bool is_pinned ();
		public bool is_shaded ();
		public bool is_skip_pager ();
		public bool is_skip_tasklist ();
		public bool is_sticky ();
		public bool is_visible_on_workspace (Wnck.Workspace workspace);
		public void keyboard_move ();
		public void keyboard_size ();
		[Version (since = "2.14")]
		public void make_above ();
		[Version (since = "2.20")]
		public void make_below ();
		public void maximize ();
		public void maximize_horizontally ();
		public void maximize_vertically ();
		public void minimize ();
		public void move_to_workspace (Wnck.Workspace space);
		[Version (since = "2.12")]
		public bool needs_attention ();
		[Version (since = "2.12")]
		public bool or_transient_needs_attention ();
		public void pin ();
		[Version (since = "2.8")]
		public void set_fullscreen (bool fullscreen);
		[Version (since = "2.16")]
		public void set_geometry (Wnck.WindowGravity gravity, Wnck.WindowMoveResizeMask geometry_mask, int x, int y, int width, int height);
		public void set_icon_geometry (int x, int y, int width, int height);
		public void set_skip_pager (bool skip);
		public void set_skip_tasklist (bool skip);
		[Version (since = "2.20")]
		public void set_sort_order (int order);
		[Version (since = "2.12")]
		public void set_window_type (Wnck.WindowType wintype);
		public void shade ();
		public void stick ();
		[Version (since = "2.12")]
		public bool transient_is_most_recently_activated ();
		[Version (since = "2.14")]
		public void unmake_above ();
		[Version (since = "2.20")]
		public void unmake_below ();
		public void unmaximize ();
		public void unmaximize_horizontally ();
		public void unmaximize_vertically ();
		public void unminimize (uint32 timestamp);
		public void unpin ();
		public void unshade ();
		public void unstick ();
		public virtual signal void actions_changed (Wnck.WindowActions changed_mask, Wnck.WindowActions new_actions);
		public virtual signal void class_changed ();
		public virtual signal void geometry_changed ();
		public virtual signal void icon_changed ();
		public virtual signal void name_changed ();
		public virtual signal void role_changed ();
		public virtual signal void state_changed (Wnck.WindowState changed_mask, Wnck.WindowState new_state);
		[Version (since = "3.20")]
		public virtual signal void type_changed ();
		public virtual signal void workspace_changed ();
	}
	[CCode (cheader_filename = "libwnck/libwnck.h", type_id = "wnck_workspace_get_type ()")]
	public class Workspace : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Workspace ();
		[Version (since = "2.10")]
		public void activate (uint32 timestamp);
		[Version (since = "2.2")]
		public void change_name (string name);
		[Version (since = "2.4")]
		public int get_height ();
		[Version (since = "2.20")]
		public int get_layout_column ();
		[Version (since = "2.20")]
		public int get_layout_row ();
		public unowned string get_name ();
		[Version (since = "2.20")]
		public unowned Wnck.Workspace get_neighbor (Wnck.MotionDirection direction);
		public int get_number ();
		public unowned Wnck.Screen get_screen ();
		[Version (since = "2.4")]
		public int get_viewport_x ();
		[Version (since = "2.4")]
		public int get_viewport_y ();
		[Version (since = "2.4")]
		public int get_width ();
		[Version (since = "2.4")]
		public bool is_virtual ();
		public virtual signal void name_changed ();
	}
	[CCode (cheader_filename = "libwnck/libwnck.h", has_type_id = false)]
	[Version (since = "2.6")]
	public struct ResourceUsage {
		public ulong total_bytes_estimate;
		public ulong pixmap_bytes;
		public uint n_pixmaps;
		public uint n_windows;
		public uint n_gcs;
		public uint n_pictures;
		public uint n_glyphsets;
		public uint n_fonts;
		public uint n_colormap_entries;
		public uint n_passive_grabs;
		public uint n_cursors;
		public uint n_other;
		[CCode (cname = "wnck_pid_read_resource_usage")]
		public static Wnck.ResourceUsage pid_read (Gdk.Display gdk_display, ulong pid);
		[CCode (cname = "wnck_xid_read_resource_usage")]
		public static Wnck.ResourceUsage xid_read (Gdk.Display gdk_display, ulong xid);
	}
	[CCode (cheader_filename = "libwnck/libwnck.h", has_type_id = false)]
	[Version (deprecated = true, deprecated_since = "2.20", since = "2.12")]
	public struct WorkspaceLayout {
		public int rows;
		public int cols;
		public int grid;
		public int grid_area;
		public int current_row;
		public int current_col;
	}
	[CCode (cheader_filename = "libwnck/libwnck.h", cprefix = "WNCK_CLIENT_TYPE_", type_id = "wnck_client_type_get_type ()")]
	[Version (since = "2.14")]
	public enum ClientType {
		APPLICATION,
		PAGER
	}
	[CCode (cheader_filename = "libwnck/libwnck.h", cprefix = "WNCK_MOTION_", type_id = "wnck_motion_direction_get_type ()")]
	[Version (since = "2.14")]
	public enum MotionDirection {
		UP,
		DOWN,
		LEFT,
		RIGHT
	}
	[CCode (cheader_filename = "libwnck/libwnck.h", cprefix = "WNCK_PAGER_DISPLAY_", type_id = "wnck_pager_display_mode_get_type ()")]
	public enum PagerDisplayMode {
		NAME,
		CONTENT
	}
	[CCode (cheader_filename = "libwnck/libwnck.h", cprefix = "WNCK_PAGER_SCROLL_", type_id = "wnck_pager_scroll_mode_get_type ()")]
	[Version (since = "3.36")]
	public enum PagerScrollMode {
		@2D,
		@1D,
		NONE
	}
	[CCode (cheader_filename = "libwnck/libwnck.h", cprefix = "WNCK_TASKLIST_", type_id = "wnck_tasklist_grouping_type_get_type ()")]
	public enum TasklistGroupingType {
		NEVER_GROUP,
		AUTO_GROUP,
		ALWAYS_GROUP
	}
	[CCode (cheader_filename = "libwnck/libwnck.h", cprefix = "WNCK_WINDOW_ACTION_", type_id = "wnck_window_actions_get_type ()")]
	[Flags]
	public enum WindowActions {
		MOVE,
		RESIZE,
		SHADE,
		STICK,
		MAXIMIZE_HORIZONTALLY,
		MAXIMIZE_VERTICALLY,
		CHANGE_WORKSPACE,
		CLOSE,
		UNMAXIMIZE_HORIZONTALLY,
		UNMAXIMIZE_VERTICALLY,
		UNSHADE,
		UNSTICK,
		MINIMIZE,
		UNMINIMIZE,
		MAXIMIZE,
		UNMAXIMIZE,
		FULLSCREEN,
		ABOVE,
		BELOW
	}
	[CCode (cheader_filename = "libwnck/libwnck.h", cprefix = "WNCK_WINDOW_GRAVITY_", type_id = "wnck_window_gravity_get_type ()")]
	[Version (since = "2.16")]
	public enum WindowGravity {
		CURRENT,
		NORTHWEST,
		NORTH,
		NORTHEAST,
		WEST,
		CENTER,
		EAST,
		SOUTHWEST,
		SOUTH,
		SOUTHEAST,
		STATIC
	}
	[CCode (cheader_filename = "libwnck/libwnck.h", cprefix = "WNCK_WINDOW_CHANGE_", type_id = "wnck_window_move_resize_mask_get_type ()")]
	[Flags]
	[Version (since = "2.16")]
	public enum WindowMoveResizeMask {
		X,
		Y,
		WIDTH,
		HEIGHT
	}
	[CCode (cheader_filename = "libwnck/libwnck.h", cprefix = "WNCK_WINDOW_STATE_", type_id = "wnck_window_state_get_type ()")]
	[Flags]
	public enum WindowState {
		MINIMIZED,
		MAXIMIZED_HORIZONTALLY,
		MAXIMIZED_VERTICALLY,
		SHADED,
		SKIP_PAGER,
		SKIP_TASKLIST,
		STICKY,
		HIDDEN,
		FULLSCREEN,
		DEMANDS_ATTENTION,
		URGENT,
		ABOVE,
		BELOW
	}
	[CCode (cheader_filename = "libwnck/libwnck.h", cprefix = "WNCK_WINDOW_", type_id = "wnck_window_type_get_type ()")]
	public enum WindowType {
		NORMAL,
		DESKTOP,
		DOCK,
		DIALOG,
		TOOLBAR,
		MENU,
		UTILITY,
		SPLASHSCREEN
	}
	[CCode (cheader_filename = "libwnck/libwnck.h", cname = "_WnckLayoutCorner", cprefix = "WNCK_LAYOUT_CORNER_", has_type_id = false)]
	public enum _LayoutCorner {
		TOPLEFT,
		TOPRIGHT,
		BOTTOMRIGHT,
		BOTTOMLEFT
	}
	[CCode (cheader_filename = "libwnck/libwnck.h", cname = "_WnckLayoutOrientation", cprefix = "WNCK_LAYOUT_ORIENTATION_", has_type_id = false)]
	public enum _LayoutOrientation {
		HORIZONTAL,
		VERTICAL
	}
	[CCode (cheader_filename = "libwnck/libwnck.h", cname = "WNCK_DEFAULT_ICON_SIZE")]
	public const int DEFAULT_ICON_SIZE;
	[CCode (cheader_filename = "libwnck/libwnck.h", cname = "WNCK_DEFAULT_MINI_ICON_SIZE")]
	public const int DEFAULT_MINI_ICON_SIZE;
	[CCode (cheader_filename = "libwnck/libwnck.h")]
	[Version (since = "2.14")]
	public static void set_client_type (Wnck.ClientType ewmh_sourceindication_client_type);
	[CCode (cheader_filename = "libwnck/libwnck.h")]
	[Version (since = "2.4.6")]
	public static void set_default_icon_size (size_t size);
	[CCode (cheader_filename = "libwnck/libwnck.h")]
	[Version (since = "2.4.6")]
	public static void set_default_mini_icon_size (size_t size);
	[CCode (cheader_filename = "libwnck/libwnck.h")]
	[Version (since = "3.4")]
	public static void shutdown ();
}
