.class final Lcom/tencent/mm/booter/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic caD:Lcom/tencent/mm/booter/ad;


# direct methods
.method constructor <init>(Lcom/tencent/mm/booter/ad;)V
    .locals 0
    .parameter

    .prologue
    .line 517
    iput-object p1, p0, Lcom/tencent/mm/booter/ae;->caD:Lcom/tencent/mm/booter/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    .line 521
    invoke-static {}, Lcom/tencent/mm/model/be;->uH()V

    .line 522
    invoke-static {}, Lcom/tencent/mm/ui/MMAppMgr;->aFk()V

    .line 523
    return-void
.end method
