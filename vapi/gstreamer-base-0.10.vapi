/* gstreamer-base-0.10.vapi generated by lt-vapigen, do not modify. */

[CCode (cprefix = "Gst", lower_case_cprefix = "gst_")]
namespace Gst {
	[CCode (cprefix = "GST_BASE_SRC_", has_type_id = "0", cheader_filename = "gst/gst.h")]
	public enum BaseSrcFlags {
		STARTED,
		FLAG_LAST
	}
	[CCode (cheader_filename = "gst/gst.h")]
	public class BaseSrc : Gst.Element {
		public Gst.Pad srcpad;
		public GLib.Mutex live_lock;
		public GLib.Cond live_cond;
		public bool live_running;
		public bool can_activate_push;
		public Gst.ActivateMode pad_mode;
		public bool seekable;
		public bool random_access;
		public Gst.ClockID clock_id;
		public Gst.ClockTime end_time;
		public Gst.Segment segment;
		public bool need_newsegment;
		public uint64 offset;
		public uint64 size;
		public int num_buffers_left;
		public void* data;
		[NoWrapper]
		public virtual bool newsegment ();
		public BaseSrc ();
		public bool get_do_timestamp ();
		public bool is_live ();
		public bool query_latency (bool live, out Gst.ClockTime min_latency, out Gst.ClockTime max_latency);
		public void set_do_timestamp (bool timestamp);
		public void set_format (Gst.Format format);
		public void set_live (bool live);
		public Gst.FlowReturn wait_playing ();
		[NoWrapper]
		public virtual bool check_get_range ();
		[NoWrapper]
		public virtual Gst.FlowReturn create (uint64 offset, uint size, out weak Gst.Buffer buf);
		[NoWrapper]
		public virtual bool do_seek (Gst.Segment segment);
		[NoWrapper]
		public virtual bool event (Gst.Event event);
		[NoWrapper]
		public virtual void fixate (Gst.Caps caps);
		[NoWrapper]
		public virtual weak Gst.Caps get_caps ();
		[NoWrapper]
		public virtual bool get_size (uint64 size);
		[NoWrapper]
		public virtual void get_times (Gst.Buffer buffer, out Gst.ClockTime start, out Gst.ClockTime end);
		[NoWrapper]
		public virtual bool is_seekable ();
		[NoWrapper]
		public virtual bool negotiate ();
		[NoWrapper]
		public virtual bool prepare_seek_segment (Gst.Event seek, Gst.Segment segment);
		[NoWrapper]
		public virtual bool query (Gst.Query query);
		[NoWrapper]
		public virtual bool set_caps (Gst.Caps caps);
		[NoWrapper]
		public virtual bool start ();
		[NoWrapper]
		public virtual bool stop ();
		[NoWrapper]
		public virtual bool unlock ();
		[NoWrapper]
		public virtual bool unlock_stop ();
		[NoAccessorMethod]
		public ulong blocksize { get; set; }
		public bool do_timestamp { get; set; }
		[NoAccessorMethod]
		public int num_buffers { get; set; }
		[NoAccessorMethod]
		public bool typefind { get; set; }
	}
	[CCode (cheader_filename = "gst/gst.h")]
	public class BaseTransform : Gst.Element {
		public Gst.Pad sinkpad;
		public Gst.Pad srcpad;
		public bool passthrough;
		public bool always_in_place;
		public Gst.Caps cache_caps1;
		public uint cache_caps1_size;
		public Gst.Caps cache_caps2;
		public uint cache_caps2_size;
		public bool have_same_caps;
		public bool delay_configure;
		public bool pending_configure;
		public bool negotiated;
		public bool have_newsegment;
		public Gst.Segment segment;
		public GLib.Mutex transform_lock;
		public const string SINK_NAME;
		public const string SRC_NAME;
		public BaseTransform ();
		public bool is_in_place ();
		public bool is_passthrough ();
		public bool is_qos_enabled ();
		public void set_gap_aware (bool gap_aware);
		public void set_in_place (bool in_place);
		public void set_passthrough (bool passthrough);
		public void set_qos_enabled (bool enabled);
		public void update_qos (double proportion, Gst.ClockTimeDiff diff, Gst.ClockTime timestamp);
		[NoWrapper]
		public virtual bool event (Gst.Event event);
		[NoWrapper]
		public virtual void fixate_caps (Gst.PadDirection direction, Gst.Caps caps, Gst.Caps othercaps);
		[NoWrapper]
		public virtual bool get_unit_size (Gst.Caps caps, uint size);
		[NoWrapper]
		public virtual Gst.FlowReturn prepare_output_buffer (Gst.Buffer input, int size, Gst.Caps caps, out weak Gst.Buffer buf);
		[NoWrapper]
		public virtual bool set_caps (Gst.Caps incaps, Gst.Caps outcaps);
		[NoWrapper]
		public virtual bool src_event (Gst.Event event);
		[NoWrapper]
		public virtual bool start ();
		[NoWrapper]
		public virtual bool stop ();
		[NoWrapper]
		public virtual Gst.FlowReturn transform (Gst.Buffer inbuf, Gst.Buffer outbuf);
		[NoWrapper]
		public virtual weak Gst.Caps transform_caps (Gst.PadDirection direction, Gst.Caps caps);
		[NoWrapper]
		public virtual Gst.FlowReturn transform_ip (Gst.Buffer buf);
		[NoWrapper]
		public virtual bool transform_size (Gst.PadDirection direction, Gst.Caps caps, uint size, Gst.Caps othercaps, uint othersize);
		[NoAccessorMethod]
		public bool qos { get; set; }
	}
	[Compact]
	[CCode (cheader_filename = "gst/base/gstcollectpads.h")]
	public class CollectData {
		public weak Gst.CollectPads collect;
		public Gst.Pad pad;
		public Gst.Buffer buffer;
		public uint pos;
		public weak Gst.Segment segment;
	}
	[Compact]
	[CCode (cheader_filename = "gst/base/gstdataqueue.h")]
	public class DataQueueItem {
		public weak Gst.MiniObject object;
		public uint size;
		public uint64 duration;
		public bool visible;
		public weak GLib.DestroyNotify destroy;
	}
	[Compact]
	[CCode (cheader_filename = "gst/base/gstdataqueue.h")]
	public class DataQueueSize {
		public uint visible;
		public uint bytes;
		public uint64 time;
	}
	[CCode (cheader_filename = "gst/base/gstadapter.h")]
	public class Adapter : GLib.Object {
		public uint available ();
		public uint available_fast ();
		public void clear ();
		public void copy (uchar dest, uint offset, uint size);
		public void flush (uint flush);
		[CCode (has_construct_function = false)]
		public Adapter ();
		public uchar peek (uint size);
		public void push (Gst.Buffer buf);
		public uchar take (uint nbytes);
		public Gst.Buffer take_buffer (uint nbytes);
	}
	[CCode (cheader_filename = "gst/base/gstbasesink.h")]
	public class BaseSink : Gst.Element {
		public Gst.Pad sinkpad;
		public Gst.ActivateMode pad_mode;
		public uint64 offset;
		public bool can_activate_pull;
		public bool can_activate_push;
		public GLib.Queue preroll_queue;
		public int preroll_queue_max_len;
		public int preroll_queued;
		public int buffers_queued;
		public int events_queued;
		public bool eos;
		public bool eos_queued;
		public bool need_preroll;
		public bool have_preroll;
		public bool playing_async;
		public bool have_newsegment;
		public Gst.Segment segment;
		public Gst.ClockID clock_id;
		public Gst.ClockTime end_time;
		public bool flushing;
		public weak Gst.Buffer get_last_buffer ();
		public Gst.ClockTime get_latency ();
		public int64 get_max_lateness ();
		public bool get_sync ();
		public Gst.ClockTimeDiff get_ts_offset ();
		public bool is_async_enabled ();
		public bool is_qos_enabled ();
		public bool query_latency (bool live, bool upstream_live, out Gst.ClockTime min_latency, out Gst.ClockTime max_latency);
		public void set_async_enabled (bool enabled);
		public void set_max_lateness (int64 max_lateness);
		public void set_qos_enabled (bool enabled);
		public void set_sync (bool sync);
		public void set_ts_offset (Gst.ClockTimeDiff offset);
		public Gst.ClockReturn wait_clock (Gst.ClockTime time, out Gst.ClockTimeDiff jitter);
		public Gst.FlowReturn wait_eos (Gst.ClockTime time, out Gst.ClockTimeDiff jitter);
		public Gst.FlowReturn wait_preroll ();
		[NoWrapper]
		public virtual bool activate_pull (bool active);
		[NoWrapper]
		public virtual Gst.StateChangeReturn async_play ();
		[NoWrapper]
		public virtual Gst.FlowReturn buffer_alloc (uint64 offset, uint size, Gst.Caps caps, out weak Gst.Buffer buf);
		[NoWrapper]
		public virtual bool event (Gst.Event event);
		[NoWrapper]
		public virtual void fixate (Gst.Caps caps);
		[NoWrapper]
		public virtual weak Gst.Caps get_caps ();
		[NoWrapper]
		public virtual void get_times (Gst.Buffer buffer, out Gst.ClockTime start, out Gst.ClockTime end);
		[NoWrapper]
		public virtual Gst.FlowReturn preroll (Gst.Buffer buffer);
		[NoWrapper]
		public virtual Gst.FlowReturn render (Gst.Buffer buffer);
		[NoWrapper]
		public virtual bool set_caps (Gst.Caps caps);
		[NoWrapper]
		public virtual bool start ();
		[NoWrapper]
		public virtual bool stop ();
		[NoWrapper]
		public virtual bool unlock ();
		[NoWrapper]
		public virtual bool unlock_stop ();
		[NoAccessorMethod]
		public bool async { get; set; }
		public Gst.Buffer last_buffer { get; }
		public int64 max_lateness { get; set; }
		[NoAccessorMethod]
		public uint preroll_queue_len { get; set construct; }
		[NoAccessorMethod]
		public bool qos { get; set; }
		public bool sync { get; set; }
		public int64 ts_offset { get; set; }
	}
	[CCode (cheader_filename = "gst/base/gstcollectpads.h")]
	public class CollectPads : Gst.Object {
		public weak GLib.SList<Gst.CollectData> data;
		public uint cookie;
		public weak GLib.Cond cond;
		public weak Gst.CollectPadsFunction func;
		public void* user_data;
		public uint numpads;
		public uint queuedpads;
		public uint eospads;
		public bool started;
		public weak Gst.CollectData add_pad (Gst.Pad pad, uint size);
		public weak Gst.CollectData add_pad_full (Gst.Pad pad, uint size, Gst.CollectDataDestroyNotify destroy_notify);
		public uint available ();
		public Gst.FlowReturn collect ();
		public Gst.FlowReturn collect_range (uint64 offset, uint length);
		public uint flush (Gst.CollectData data, uint size);
		public bool is_active (Gst.Pad pad);
		[CCode (has_construct_function = false)]
		public CollectPads ();
		public weak Gst.Buffer peek (Gst.CollectData data);
		public weak Gst.Buffer pop (Gst.CollectData data);
		public uint read (Gst.CollectData data, uchar bytes, uint size);
		public weak Gst.Buffer read_buffer (Gst.CollectData data, uint size);
		public bool remove_pad (Gst.Pad pad);
		public void set_flushing (bool flushing);
		public void set_function (Gst.CollectPadsFunction func);
		public void start ();
		public void stop ();
		public Gst.Buffer take_buffer (Gst.CollectData data, uint size);
	}
	[CCode (cheader_filename = "gst/base/gstdataqueue.h")]
	public class DataQueue : GLib.Object {
		public weak GLib.Queue queue;
		public weak Gst.DataQueueSize cur_level;
		public weak Gst.DataQueueCheckFullFunction checkfull;
		public void* checkdata;
		public weak GLib.Mutex qlock;
		public weak GLib.Cond item_add;
		public weak GLib.Cond item_del;
		public bool flushing;
		public bool drop_head (GLib.Type type);
		public void flush ();
		public void get_level (Gst.DataQueueSize level);
		public bool is_empty ();
		public bool is_full ();
		public void limits_changed ();
		[CCode (has_construct_function = false)]
		public DataQueue (Gst.DataQueueCheckFullFunction checkfull, void* checkdata);
		public bool pop (out weak Gst.DataQueueItem item);
		public bool push (Gst.DataQueueItem item);
		public void set_flushing (bool flushing);
		[NoAccessorMethod]
		public uint current_level_bytes { get; }
		[NoAccessorMethod]
		public uint64 current_level_time { get; }
		[NoAccessorMethod]
		public uint current_level_visible { get; }
		public virtual signal void empty ();
		public virtual signal void full ();
	}
	[CCode (cheader_filename = "gst/base/gstpushsrc.h")]
	public class PushSrc : Gst.BaseSrc {
		[NoWrapper]
		public virtual Gst.FlowReturn create (out weak Gst.Buffer buf);
	}
	[CCode (cheader_filename = "gst/base/gstcollectpads.h")]
	public delegate void CollectDataDestroyNotify ();
	[CCode (cheader_filename = "gst/gst.h")]
	public delegate Gst.FlowReturn CollectPadsFunction (Gst.CollectPads pads);
	[CCode (cheader_filename = "gst/base/gstdataqueue.h")]
	public static delegate bool DataQueueCheckFullFunction (Gst.DataQueue queue, uint visible, uint bytes, uint64 time, void* checkdata);
	[CCode (cheader_filename = "gst/base/gsttypefindhelper.h")]
	public static delegate Gst.FlowReturn TypeFindHelperGetRangeFunction (Gst.Object obj, uint64 offset, uint length, out weak Gst.Buffer buffer);
	[CCode (cheader_filename = "gst/gst.h")]
	public static weak Gst.Caps type_find_helper (Gst.Pad src, uint64 size);
	[CCode (cheader_filename = "gst/gst.h")]
	public static weak Gst.Caps type_find_helper_for_buffer (Gst.Object obj, Gst.Buffer buf, Gst.TypeFindProbability prob);
	[CCode (cheader_filename = "gst/gst.h")]
	public static weak Gst.Caps type_find_helper_get_range (Gst.Object obj, Gst.TypeFindHelperGetRangeFunction func, uint64 size, Gst.TypeFindProbability prob);
}
