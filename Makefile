SRC = \
    src/GamerServices/Achievement.cs \
    src/GamerServices/AchievementCollection.cs \
    src/GamerServices/ControllerSensitivity.cs \
    src/GamerServices/FriendCollection.cs \
    src/GamerServices/FriendGamer.cs \
    src/GamerServices/GameDefaults.cs \
    src/GamerServices/GameDifficulty.cs \
    src/GamerServices/GameUpdateRequiredException.cs \
    src/GamerServices/Gamer.cs \
    src/GamerServices/GamerCollection.cs \
    src/GamerServices/GamerPresence.cs \
    src/GamerServices/GamerPresenceMode.cs \
    src/GamerServices/GamerPrivilegeException.cs \
    src/GamerServices/GamerPrivilegeSetting.cs \
    src/GamerServices/GamerPrivileges.cs \
    src/GamerServices/GamerProfile.cs \
    src/GamerServices/GamerServicesComponent.cs \
    src/GamerServices/GamerServicesDispatcher.cs \
    src/GamerServices/GamerServicesNotAvailableException.cs \
    src/GamerServices/GamerZone.cs \
    src/GamerServices/Guide.cs \
    src/GamerServices/GuideAlreadyVisibleException.cs \
    src/GamerServices/InviteAcceptedEventArgs.cs \
    src/GamerServices/LeaderboardEntry.cs \
    src/GamerServices/LeaderboardIdentity.cs \
    src/GamerServices/LeaderboardKey.cs \
    src/GamerServices/LeaderboardOutcome.cs \
    src/GamerServices/LeaderboardReader.cs \
    src/GamerServices/LeaderboardWriter.cs \
    src/GamerServices/MessageBoxIcon.cs \
    src/GamerServices/NetworkException.cs \
    src/GamerServices/NetworkNotAvailableException.cs \
    src/GamerServices/NotificationPosition.cs \
    src/GamerServices/PropertyDictionary.cs \
    src/GamerServices/RacingCameraAngle.cs \
    src/GamerServices/SignedInEventArgs.cs \
    src/GamerServices/SignedInGamer.cs \
    src/GamerServices/SignedInGamerCollection.cs \
    src/GamerServices/SignedOutEventArgs.cs \
    src/Net/AvailableNetworkSession.cs \
    src/Net/AvailableNetworkSessionCollection.cs \
    src/Net/GameEndedEventArgs.cs \
    src/Net/GameStartedEventArgs.cs \
    src/Net/GamerJoinedEventArgs.cs \
    src/Net/GamerLeftEventArgs.cs \
    src/Net/HostChangedEventArgs.cs \
    src/Net/LocalNetworkGamer.cs \
    src/Net/NetworkGamer.cs \
    src/Net/NetworkMachine.cs \
    src/Net/NetworkSession.cs \
    src/Net/NetworkSessionEndReason.cs \
    src/Net/NetworkSessionEndedEventArgs.cs \
    src/Net/NetworkSessionJoinError.cs \
    src/Net/NetworkSessionJoinException.cs \
    src/Net/NetworkSessionProperties.cs \
    src/Net/NetworkSessionState.cs \
    src/Net/NetworkSessionType.cs \
    src/Net/PacketReader.cs \
    src/Net/PacketWriter.cs \
    src/Net/QualityOfService.cs \
    src/Net/SendDataOptions.cs \
    src/Net/WriteLeaderboardsEventArgs.cs \
    src/Properties/AssemblyInfo.cs \

.PHONY: strongname clean-strongname clean all

bin/Strongname/FNA.NetStub.dll: $(SRC) ../FNA/bin/Release/FNA.dll
	mkdir -p bin/Strongname
	mcs $(CSFLAGS) -keyfile:mono.snk -optimize -out:$@ -target:library $(SRC) -r:../FNA/bin/Release/FNA.dll

strongname: bin/Strongname/FNA.NetStub.dll

clean-strongname:
	rm -rf bin/Strongname

clean:
	rm -rf bin

all: strongname
