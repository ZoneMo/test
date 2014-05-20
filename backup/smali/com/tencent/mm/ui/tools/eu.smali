.class final Lcom/tencent/mm/ui/tools/eu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic hlZ:Lcom/tencent/mm/ui/tools/er;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/er;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/eu;->hlZ:Lcom/tencent/mm/ui/tools/er;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/eu;->hlZ:Lcom/tencent/mm/ui/tools/er;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/er;->hlX:Lcom/tencent/mm/ui/tools/eo;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/eo;->c(Lcom/tencent/mm/ui/tools/eo;)Lcom/tencent/mm/ui/tools/ez;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/ui/tools/ez;->FU()V

    .line 208
    return-void
.end method
