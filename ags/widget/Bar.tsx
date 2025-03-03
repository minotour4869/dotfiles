import { App, Astal, Gtk, Gdk } from "astal/gtk3"
import { Variable } from "astal"
import AstalBattery from "gi://AstalBattery?version=0.1"

const time = Variable("").poll(1000, "date +'%I:%M %p'")

function Placeholder(): JSX.Element {
	return <box
				halign={Gtk.Align.START}>
			</box>
}

function TimeBox(): JSX.Element {
	return <box
				halign={Gtk.Align.CENTER}>
				<label label={time()} />
			</box>
}

function Battery(): JSX.Element {
	const battery = AstalBattery.get_default()
	return <box
				halign={Gtk.Align.END}>
				<label label={battery.percentage*100 + "%"} />
			</box>
}

export default function Bar(gdkmonitor: Gdk.Monitor) {
    return <window
        className="Bar"
        gdkmonitor={gdkmonitor}
        exclusivity={Astal.Exclusivity.EXCLUSIVE}
        anchor={Astal.WindowAnchor.TOP
            | Astal.WindowAnchor.LEFT
            | Astal.WindowAnchor.RIGHT}
        application={App}>
        <centerbox>
			<Placeholder />
			<TimeBox />
			<Battery />
        </centerbox>
    </window>
}
