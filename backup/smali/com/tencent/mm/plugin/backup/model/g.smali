.class final Lcom/tencent/mm/plugin/backup/model/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cKa:Ljava/lang/Runnable;

.field final synthetic cKb:I


# direct methods
.method constructor <init>(Ljava/lang/Runnable;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/tencent/mm/plugin/backup/model/g;->cKa:Ljava/lang/Runnable;

    iput p2, p0, Lcom/tencent/mm/plugin/backup/model/g;->cKb:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/g;->cKa:Ljava/lang/Runnable;

    iget v1, p0, Lcom/tencent/mm/plugin/backup/model/g;->cKb:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/backup/model/d;->a(Ljava/lang/Runnable;I)V

    .line 261
    return-void
.end method
