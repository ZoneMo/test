.class public final Lcom/tencent/mm/plugin/search/model/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/bb;


# instance fields
.field private egM:Lcom/tencent/mm/plugin/search/model/ap;

.field private ein:Lcom/tencent/mm/plugin/search/model/y;

.field private eio:Lcom/tencent/mm/plugin/search/model/ag;

.field private eip:Lcom/tencent/mm/plugin/search/model/b;

.field private eiq:Z

.field private eir:Z

.field private eis:Lcom/tencent/mm/sdk/b/g;

.field private eit:Landroid/content/BroadcastReceiver;

.field private eiu:Ljava/lang/Runnable;

.field private eiv:Lcom/tencent/mm/model/dw;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v0, p0, Lcom/tencent/mm/plugin/search/model/at;->eiq:Z

    .line 44
    iput-boolean v0, p0, Lcom/tencent/mm/plugin/search/model/at;->eir:Z

    .line 194
    new-instance v0, Lcom/tencent/mm/plugin/search/model/av;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/search/model/av;-><init>(Lcom/tencent/mm/plugin/search/model/at;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/at;->eis:Lcom/tencent/mm/sdk/b/g;

    .line 204
    new-instance v0, Lcom/tencent/mm/plugin/search/model/aw;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/search/model/aw;-><init>(Lcom/tencent/mm/plugin/search/model/at;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/at;->eit:Landroid/content/BroadcastReceiver;

    .line 217
    new-instance v0, Lcom/tencent/mm/plugin/search/model/ax;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/search/model/ax;-><init>(Lcom/tencent/mm/plugin/search/model/at;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/at;->eiu:Ljava/lang/Runnable;

    .line 225
    new-instance v0, Lcom/tencent/mm/plugin/search/model/ay;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/search/model/ay;-><init>(Lcom/tencent/mm/plugin/search/model/at;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/at;->eiv:Lcom/tencent/mm/model/dw;

    .line 87
    new-instance v0, Lcom/tencent/mm/plugin/search/model/y;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/search/model/y;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/at;->ein:Lcom/tencent/mm/plugin/search/model/y;

    .line 91
    iput-object v1, p0, Lcom/tencent/mm/plugin/search/model/at;->egM:Lcom/tencent/mm/plugin/search/model/ap;

    .line 94
    iput-object v1, p0, Lcom/tencent/mm/plugin/search/model/at;->eio:Lcom/tencent/mm/plugin/search/model/ag;

    .line 95
    iput-object v1, p0, Lcom/tencent/mm/plugin/search/model/at;->eip:Lcom/tencent/mm/plugin/search/model/b;

    .line 97
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/tencent/mm/plugin/search/model/ad;Landroid/os/Handler;)Lcom/tencent/mm/plugin/search/model/af;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-static {}, Lcom/tencent/mm/plugin/search/model/at;->aaX()Lcom/tencent/mm/plugin/search/model/at;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/plugin/search/model/at;->eio:Lcom/tencent/mm/plugin/search/model/ag;

    invoke-virtual {v0, p0, p1, p2}, Lcom/tencent/mm/plugin/search/model/ag;->a(Ljava/lang/String;Lcom/tencent/mm/plugin/search/model/ad;Landroid/os/Handler;)Lcom/tencent/mm/plugin/search/model/af;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/tencent/mm/plugin/search/model/aq;)Lcom/tencent/mm/plugin/search/model/af;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-static {}, Lcom/tencent/mm/plugin/search/model/at;->aaX()Lcom/tencent/mm/plugin/search/model/at;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/plugin/search/model/at;->eip:Lcom/tencent/mm/plugin/search/model/b;

    invoke-virtual {v0, p0, p1}, Lcom/tencent/mm/plugin/search/model/b;->a(Ljava/lang/String;Lcom/tencent/mm/plugin/search/model/aq;)Lcom/tencent/mm/plugin/search/model/af;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;ZLcom/tencent/mm/plugin/search/model/ad;Landroid/os/Handler;)Lcom/tencent/mm/plugin/search/model/af;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-static {}, Lcom/tencent/mm/plugin/search/model/at;->aaX()Lcom/tencent/mm/plugin/search/model/at;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/plugin/search/model/at;->eip:Lcom/tencent/mm/plugin/search/model/b;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tencent/mm/plugin/search/model/b;->a(Ljava/lang/String;ZLcom/tencent/mm/plugin/search/model/ad;Landroid/os/Handler;)Lcom/tencent/mm/plugin/search/model/af;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/search/model/at;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/tencent/mm/plugin/search/model/at;->aba()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/search/model/at;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/tencent/mm/plugin/search/model/at;->eir:Z

    return p1
.end method

.method private static aaX()Lcom/tencent/mm/plugin/search/model/at;
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/tencent/mm/model/be;->uh()Lcom/tencent/mm/model/dr;

    move-result-object v0

    const-string v1, "plugin.search"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/dr;->dN(Ljava/lang/String;)Lcom/tencent/mm/model/bb;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/search/model/at;

    .line 50
    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/tencent/mm/plugin/search/model/at;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/search/model/at;-><init>()V

    .line 52
    invoke-static {}, Lcom/tencent/mm/model/be;->uh()Lcom/tencent/mm/model/dr;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/i/i;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/model/dr;->a(Ljava/lang/String;Lcom/tencent/mm/model/bb;)Z

    .line 54
    :cond_0
    return-object v0
.end method

.method public static aaY()Z
    .locals 1

    .prologue
    .line 76
    invoke-static {}, Lcom/tencent/mm/plugin/search/model/at;->aaX()Lcom/tencent/mm/plugin/search/model/at;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/mm/plugin/search/model/at;->eiq:Z

    return v0
.end method

.method public static aaZ()Z
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcom/tencent/mm/plugin/search/model/at;->aaX()Lcom/tencent/mm/plugin/search/model/at;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/mm/plugin/search/model/at;->eir:Z

    return v0
.end method

.method private aba()V
    .locals 4

    .prologue
    .line 181
    new-instance v0, Lcom/tencent/mm/plugin/search/model/ag;

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/at;->ein:Lcom/tencent/mm/plugin/search/model/y;

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/at;->egM:Lcom/tencent/mm/plugin/search/model/ap;

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/plugin/search/model/ag;-><init>(Lcom/tencent/mm/plugin/search/model/y;Lcom/tencent/mm/plugin/search/model/ap;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/at;->eio:Lcom/tencent/mm/plugin/search/model/ag;

    .line 182
    new-instance v0, Lcom/tencent/mm/plugin/search/model/b;

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/at;->ein:Lcom/tencent/mm/plugin/search/model/y;

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/at;->egM:Lcom/tencent/mm/plugin/search/model/ap;

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/plugin/search/model/b;-><init>(Lcom/tencent/mm/plugin/search/model/y;Lcom/tencent/mm/plugin/search/model/ap;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/at;->eip:Lcom/tencent/mm/plugin/search/model/b;

    .line 185
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/at;->ein:Lcom/tencent/mm/plugin/search/model/y;

    const v1, 0x2ffff

    new-instance v2, Lcom/tencent/mm/plugin/search/model/ac;

    iget-object v3, p0, Lcom/tencent/mm/plugin/search/model/at;->egM:Lcom/tencent/mm/plugin/search/model/ap;

    invoke-direct {v2, v3}, Lcom/tencent/mm/plugin/search/model/ac;-><init>(Lcom/tencent/mm/plugin/search/model/ap;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/search/model/y;->a(ILcom/tencent/mm/plugin/search/model/af;)Lcom/tencent/mm/plugin/search/model/af;

    .line 190
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/at;->ein:Lcom/tencent/mm/plugin/search/model/y;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/y;->start()V

    .line 191
    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/search/model/at;)Lcom/tencent/mm/plugin/search/model/y;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/at;->ein:Lcom/tencent/mm/plugin/search/model/y;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/search/model/at;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/tencent/mm/plugin/search/model/at;->eiq:Z

    return p1
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/search/model/at;)Lcom/tencent/mm/plugin/search/model/ap;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/at;->egM:Lcom/tencent/mm/plugin/search/model/ap;

    return-object v0
.end method

.method public static c(Lcom/tencent/mm/plugin/search/model/af;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    invoke-static {}, Lcom/tencent/mm/plugin/search/model/at;->aaX()Lcom/tencent/mm/plugin/search/model/at;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/plugin/search/model/at;->ein:Lcom/tencent/mm/plugin/search/model/y;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/plugin/search/model/y;->a(Lcom/tencent/mm/plugin/search/model/af;)V

    .line 73
    return-void
.end method


# virtual methods
.method public final N(Z)V
    .locals 0
    .parameter

    .prologue
    .line 108
    return-void
.end method

.method public final bJ(I)V
    .locals 0
    .parameter

    .prologue
    .line 105
    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 114
    new-instance v0, Lcom/tencent/mm/plugin/search/model/ap;

    invoke-direct {v0, p2}, Lcom/tencent/mm/plugin/search/model/ap;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/search/model/at;->egM:Lcom/tencent/mm/plugin/search/model/ap;

    .line 117
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/at;->ein:Lcom/tencent/mm/plugin/search/model/y;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/y;->init()V

    .line 118
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/at;->ein:Lcom/tencent/mm/plugin/search/model/y;

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/at;->eiu:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/search/model/y;->j(Ljava/lang/Runnable;)V

    .line 121
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "Activate"

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/at;->eis:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->a(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 126
    const-string v1, "status"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 127
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/mm/plugin/search/model/at;->eiq:Z

    .line 131
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 132
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/at;->eit:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->c(Ljava/lang/Integer;)I

    move-result v0

    if-nez v0, :cond_2

    .line 141
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x26

    new-instance v2, Lcom/tencent/mm/plugin/search/model/au;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/search/model/au;-><init>(Lcom/tencent/mm/plugin/search/model/at;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/n/ac;->a(ILcom/tencent/mm/n/m;)V

    .line 153
    :goto_1
    invoke-static {}, Lcom/tencent/mm/model/be;->ui()Lcom/tencent/mm/model/dv;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/at;->eiv:Lcom/tencent/mm/model/dw;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/dv;->a(Lcom/tencent/mm/model/dw;)Z

    .line 154
    return-void

    .line 127
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 150
    :cond_2
    invoke-direct {p0}, Lcom/tencent/mm/plugin/search/model/at;->aba()V

    goto :goto_1
.end method

.method public final qy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 158
    invoke-static {}, Lcom/tencent/mm/model/be;->ui()Lcom/tencent/mm/model/dv;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/at;->eiv:Lcom/tencent/mm/model/dw;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/dv;->b(Lcom/tencent/mm/model/dw;)Z

    .line 161
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/search/model/at;->eit:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 164
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    const-string v1, "Activate"

    iget-object v2, p0, Lcom/tencent/mm/plugin/search/model/at;->eis:Lcom/tencent/mm/sdk/b/g;

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/sdk/b/f;->b(Ljava/lang/String;Lcom/tencent/mm/sdk/b/g;)Z

    .line 167
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/at;->ein:Lcom/tencent/mm/plugin/search/model/y;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/y;->quit()V

    .line 170
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/at;->eio:Lcom/tencent/mm/plugin/search/model/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/at;->eio:Lcom/tencent/mm/plugin/search/model/ag;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ag;->close()V

    .line 171
    :cond_0
    iput-object v3, p0, Lcom/tencent/mm/plugin/search/model/at;->eio:Lcom/tencent/mm/plugin/search/model/ag;

    .line 172
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/at;->eip:Lcom/tencent/mm/plugin/search/model/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/at;->eip:Lcom/tencent/mm/plugin/search/model/b;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/b;->close()V

    .line 173
    :cond_1
    iput-object v3, p0, Lcom/tencent/mm/plugin/search/model/at;->eip:Lcom/tencent/mm/plugin/search/model/b;

    .line 175
    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/at;->egM:Lcom/tencent/mm/plugin/search/model/ap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/plugin/search/model/at;->egM:Lcom/tencent/mm/plugin/search/model/ap;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/search/model/ap;->close()V

    .line 176
    :cond_2
    iput-object v3, p0, Lcom/tencent/mm/plugin/search/model/at;->egM:Lcom/tencent/mm/plugin/search/model/ap;

    .line 177
    return-void
.end method

.method public final qz()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method
