.class final Lcom/tencent/mm/ui/conversation/bu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic gZR:Lcom/tencent/mm/ui/conversation/bt;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/conversation/bt;)V
    .locals 0
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/tencent/mm/ui/conversation/bu;->gZR:Lcom/tencent/mm/ui/conversation/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 394
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/conversation/bu;->gZR:Lcom/tencent/mm/ui/conversation/bt;

    iget-object v1, v1, Lcom/tencent/mm/ui/conversation/bt;->gZI:Lcom/tencent/mm/ui/conversation/MainUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/conversation/MainUI;->f(Lcom/tencent/mm/ui/conversation/MainUI;)Lcom/tencent/mm/z/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 395
    return-void
.end method
