.class final Lcom/tencent/mm/plugin/accountsync/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic cGV:Landroid/content/Context;

.field final synthetic cIm:Lcom/tencent/mm/plugin/accountsync/ui/a;

.field final synthetic cIn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/accountsync/ui/a;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/tencent/mm/plugin/accountsync/ui/c;->cIm:Lcom/tencent/mm/plugin/accountsync/ui/a;

    iput-object p2, p0, Lcom/tencent/mm/plugin/accountsync/ui/c;->cGV:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/mm/plugin/accountsync/ui/c;->cIn:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 280
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v1, 0x3022

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 281
    iget-object v0, p0, Lcom/tencent/mm/plugin/accountsync/ui/c;->cIm:Lcom/tencent/mm/plugin/accountsync/ui/a;

    iget-object v1, p0, Lcom/tencent/mm/plugin/accountsync/ui/c;->cGV:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/mm/plugin/accountsync/ui/c;->cIn:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/plugin/accountsync/ui/a;->a(Lcom/tencent/mm/plugin/accountsync/ui/a;Landroid/content/Context;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/tencent/mm/plugin/accountsync/ui/c;->cGV:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/tencent/mm/plugin/accountsync/ui/c;->cGV:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 285
    :cond_0
    return-void
.end method
