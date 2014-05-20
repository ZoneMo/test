.class final Lcom/tencent/mm/w/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/az;


# instance fields
.field final synthetic ctK:Lcom/tencent/mm/w/o;


# direct methods
.method constructor <init>(Lcom/tencent/mm/w/o;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/tencent/mm/w/s;->ctK:Lcom/tencent/mm/w/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ok()Z
    .locals 1

    .prologue
    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/w/s;->ctK:Lcom/tencent/mm/w/o;

    invoke-static {v0}, Lcom/tencent/mm/w/o;->d(Lcom/tencent/mm/w/o;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
