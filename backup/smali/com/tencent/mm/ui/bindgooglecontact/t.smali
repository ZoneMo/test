.class final Lcom/tencent/mm/ui/bindgooglecontact/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/tools/ez;


# instance fields
.field final synthetic gHY:Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/tencent/mm/ui/bindgooglecontact/t;->gHY:Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final FT()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public final FU()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public final FV()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public final ig(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/tencent/mm/ui/bindgooglecontact/t;->gHY:Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;

    invoke-static {p1}, Lcom/tencent/mm/sdk/platformtools/cj;->hR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;->a(Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/tencent/mm/ui/bindgooglecontact/t;->gHY:Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;->a(Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;)Lcom/tencent/mm/ui/bindgooglecontact/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/tencent/mm/ui/bindgooglecontact/t;->gHY:Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;->a(Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;)Lcom/tencent/mm/ui/bindgooglecontact/o;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bindgooglecontact/t;->gHY:Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;->b(Lcom/tencent/mm/ui/bindgooglecontact/GoogleFriendUI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bindgooglecontact/o;->ih(Ljava/lang/String;)V

    .line 193
    :cond_0
    return-void
.end method
