.class final Lcom/tencent/mm/booter/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic caH:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput p1, p0, Lcom/tencent/mm/booter/am;->caH:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 104
    sget-object v0, Lcom/tencent/mm/plugin/d/c/m;->dZN:Lcom/tencent/mm/plugin/d/c/m;

    const/16 v1, 0x29b3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/tencent/mm/booter/am;->caH:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/tencent/mm/sdk/platformtools/j;->bKo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/d/c/m;->j(ILjava/lang/String;)V

    .line 105
    return-void
.end method
