.class final Lcom/tencent/mm/ui/en;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ckt:Ljava/lang/String;

.field final synthetic gph:Lcom/tencent/mm/ui/em;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/em;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/tencent/mm/ui/en;->gph:Lcom/tencent/mm/ui/em;

    iput-object p2, p0, Lcom/tencent/mm/ui/en;->ckt:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 215
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sA()Lcom/tencent/mm/storage/c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/en;->ckt:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mm/storage/c;->h(Ljava/lang/String;J)V

    .line 216
    return-void
.end method
