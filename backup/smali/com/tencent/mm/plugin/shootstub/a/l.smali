.class public final Lcom/tencent/mm/plugin/shootstub/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/plugin/shootstub/a/a;


# instance fields
.field public eqW:Ljava/util/ArrayList;

.field public etS:Ljava/util/ArrayList;

.field public etT:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final aea()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x2

    return v0
.end method

.method public final h(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 24
    const-string v0, "RemoteEventGetUserInfo_data_usernameList"

    iget-object v1, p0, Lcom/tencent/mm/plugin/shootstub/a/l;->etS:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 26
    const-string v0, "RemoteEventGetUserInfo_result_displayNameList"

    iget-object v1, p0, Lcom/tencent/mm/plugin/shootstub/a/l;->eqW:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 27
    const-string v0, "RemoteEventGetUserInfo_result_headImgPathList"

    iget-object v1, p0, Lcom/tencent/mm/plugin/shootstub/a/l;->etT:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 28
    return-void
.end method

.method public final i(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 16
    const-string v0, "RemoteEventGetUserInfo_data_usernameList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/shootstub/a/l;->etS:Ljava/util/ArrayList;

    .line 18
    const-string v0, "RemoteEventGetUserInfo_result_displayNameList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/shootstub/a/l;->eqW:Ljava/util/ArrayList;

    .line 19
    const-string v0, "RemoteEventGetUserInfo_result_headImgPathList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/shootstub/a/l;->etT:Ljava/util/ArrayList;

    .line 20
    return-void
.end method
