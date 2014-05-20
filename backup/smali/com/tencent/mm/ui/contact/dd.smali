.class final Lcom/tencent/mm/ui/contact/dd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gUP:Lcom/tencent/mm/ui/contact/db;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/db;)V
    .locals 0
    .parameter

    .prologue
    .line 649
    iput-object p1, p0, Lcom/tencent/mm/ui/contact/dd;->gUP:Lcom/tencent/mm/ui/contact/db;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/dd;->gUP:Lcom/tencent/mm/ui/contact/db;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/db;->a(Lcom/tencent/mm/ui/contact/db;)Lcom/tencent/mm/ui/bd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/dd;->gUP:Lcom/tencent/mm/ui/contact/db;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/db;->b(Lcom/tencent/mm/ui/contact/db;)Lcom/tencent/mm/ui/bd;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/ui/bd;->FW()V

    .line 656
    :cond_0
    return-void
.end method
