.class final Lcom/tencent/mm/ui/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic glv:Lcom/tencent/mm/ui/GrantRoomUI;

.field final synthetic glw:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/GrantRoomUI;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/tencent/mm/ui/aa;->glv:Lcom/tencent/mm/ui/GrantRoomUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/aa;->glw:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 129
    new-instance v0, Lcom/tencent/mm/plugin/chatroom/a/g;

    iget-object v1, p0, Lcom/tencent/mm/ui/aa;->glw:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/tencent/mm/plugin/chatroom/a/g;-><init>(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/tencent/mm/ui/aa;->glv:Lcom/tencent/mm/ui/GrantRoomUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/aa;->glv:Lcom/tencent/mm/ui/GrantRoomUI;

    iget-object v3, p0, Lcom/tencent/mm/ui/aa;->glv:Lcom/tencent/mm/ui/GrantRoomUI;

    const v4, 0x7f0709bb

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/GrantRoomUI;->getString(I)Ljava/lang/String;

    const-string v3, ""

    const/4 v4, 0x1

    new-instance v5, Lcom/tencent/mm/ui/ab;

    invoke-direct {v5, p0, v0}, Lcom/tencent/mm/ui/ab;-><init>(Lcom/tencent/mm/ui/aa;Lcom/tencent/mm/plugin/chatroom/a/g;)V

    invoke-static {v2, v3, v4, v5}, Lcom/tencent/mm/ui/base/h;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/base/ch;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/ui/GrantRoomUI;->a(Lcom/tencent/mm/ui/GrantRoomUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 140
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 141
    return-void
.end method
