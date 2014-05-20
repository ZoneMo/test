.class final Lcom/tencent/mm/ui/pluginapp/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/i/c;


# instance fields
.field final synthetic hdq:Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/tencent/mm/ui/pluginapp/r;->hdq:Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ce(I)V
    .locals 1
    .parameter

    .prologue
    .line 118
    const v0, 0x40003

    if-eq p1, v0, :cond_0

    const v0, 0x40005

    if-ne p1, v0, :cond_1

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/r;->hdq:Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->c(Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;)V

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/pluginapp/r;->hdq:Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;->d(Lcom/tencent/mm/ui/pluginapp/FindMoreFriendsUI;)Lcom/tencent/mm/ui/base/preference/n;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/ui/base/preference/n;->notifyDataSetChanged()V

    .line 122
    return-void
.end method

.method public final cf(I)V
    .locals 0
    .parameter

    .prologue
    .line 126
    return-void
.end method
