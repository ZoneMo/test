.class Lcom/tencent/tmassistantsdk/downloadservice/NetworkMonitorReceiver$1;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/tencent/tmassistantsdk/downloadservice/NetworkMonitorReceiver;


# direct methods
.method constructor <init>(Lcom/tencent/tmassistantsdk/downloadservice/NetworkMonitorReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tencent/tmassistantsdk/downloadservice/NetworkMonitorReceiver$1;->this$0:Lcom/tencent/tmassistantsdk/downloadservice/NetworkMonitorReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 95
    :goto_0
    return-void

    .line 94
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/downloadservice/NetworkMonitorReceiver$1;->this$0:Lcom/tencent/tmassistantsdk/downloadservice/NetworkMonitorReceiver;

    invoke-virtual {v0}, Lcom/tencent/tmassistantsdk/downloadservice/NetworkMonitorReceiver;->notifyNetworkChanged()V

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method
