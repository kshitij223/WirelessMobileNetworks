//
// Copyright (C) 2010 Alfonso Ariza
//
// This program is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public License
// as published by the Free Software Foundation; either version 2
// of the License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
//

package inet.examples.adhoc.net80211_mesh;


import inet.networklayer.autorouting.FlatNetworkConfigurator;
import inet.nodes.adhoc.MobileHost;
import inet.experimental.nodes.adhoc.MobileManetRoutingMesh;
import inet.experimental.nodes.adhoc.BasicMobileManetMesh;
import inet.world.ChannelControl;


import inet.examples.hostautoconf.Host;
import inet.networklayer.autorouting.HostAutoConfigurator;
import inet.networklayer.autorouting.NetworkConfigurator;
network Net80211_mesh
{
    parameters:
        int numHosts;
        int numFixHosts;
        int numBasic;
        double playgroundSizeX;
        double playgroundSizeY;
    submodules:
        fixhost[numFixHosts]: MobileManetRoutingMesh {
            parameters:
                @display("i=device/pocketpc_s;r=,,#707070");
        }
        host[numHosts]: MobileManetRoutingMesh {
            parameters:
                @display("i=device/pocketpc_s;r=,,#707070;p=155,39");
        }
        basic[numBasic]: BasicMobileManetMesh {
            parameters:
                @display("i=device/pocketpc_s;r=,,#707070;p=217,215");
        }
        channelcontrol: ChannelControl {
            parameters:
                playgroundSizeX = playgroundSizeX;
                playgroundSizeY = playgroundSizeY;
                @display("p=61,177;i=misc/sun");
        }
        configurator: FlatNetworkConfigurator {
            parameters:
                networkAddress = "145.236.0.0";
                netmask = "255.255.0.0";
                @display("p=246,46;i=block/cogwheel_s");
        }
    connections allowunconnected:
}


