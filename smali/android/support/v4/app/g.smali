.class final Landroid/support/v4/app/g;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic aX:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Landroid/support/v4/app/g;->aX:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 91
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 102
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 93
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/g;->aX:Landroid/support/v4/app/FragmentActivity;

    iget-boolean v0, v0, Landroid/support/v4/app/FragmentActivity;->aT:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Landroid/support/v4/app/g;->aX:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->b(Z)V

    goto :goto_0

    .line 98
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/app/g;->aX:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->t()V

    .line 99
    iget-object v0, p0, Landroid/support/v4/app/g;->aX:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->aQ:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->A()Z

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
