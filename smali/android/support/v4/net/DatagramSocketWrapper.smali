.class Landroid/support/v4/net/DatagramSocketWrapper;
.super Ljava/net/Socket;


# direct methods
.method constructor <init>(Ljava/net/DatagramSocket;Ljava/io/FileDescriptor;)V
    .registers 4

    new-instance v0, Landroid/support/v4/net/DatagramSocketWrapper$DatagramSocketImplWrapper;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/net/DatagramSocketWrapper$DatagramSocketImplWrapper;-><init>(Ljava/net/DatagramSocket;Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0}, Ljava/net/Socket;-><init>(Ljava/net/SocketImpl;)V

    return-void
.end method
