.class final Lcom/tencent/mm/ui/ej;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic gpa:Lcom/tencent/mm/ui/RoomInfoUI;

.field final synthetic gpg:Lcom/tencent/mm/c/a/dr;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/RoomInfoUI;Lcom/tencent/mm/c/a/dr;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1477
    iput-object p1, p0, Lcom/tencent/mm/ui/ej;->gpa:Lcom/tencent/mm/ui/RoomInfoUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/ej;->gpg:Lcom/tencent/mm/c/a/dr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/tencent/mm/ui/ej;->gpg:Lcom/tencent/mm/c/a/dr;

    iget-object v1, v0, Lcom/tencent/mm/c/a/dr;->bOH:Lcom/tencent/mm/c/a/ds;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/tencent/mm/c/a/ds;->bOD:Z

    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 1481
    return-void
.end method
