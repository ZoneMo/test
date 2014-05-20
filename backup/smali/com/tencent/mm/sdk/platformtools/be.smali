.class public final Lcom/tencent/mm/sdk/platformtools/be;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field geh:Ljava/lang/String;

.field gei:Ljava/lang/String;

.field gej:I

.field gek:I

.field gel:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/mm/sdk/platformtools/be;->gej:I

    .line 12
    const/16 v0, 0x14

    iput v0, p0, Lcom/tencent/mm/sdk/platformtools/be;->gek:I

    .line 13
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/sdk/platformtools/be;->gel:Ljava/util/List;

    return-void
.end method
