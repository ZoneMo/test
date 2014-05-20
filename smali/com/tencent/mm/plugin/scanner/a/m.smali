.class public final Lcom/tencent/mm/plugin/scanner/a/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ebE:Ljava/lang/String;

.field private ebF:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    iput-object p1, p0, Lcom/tencent/mm/plugin/scanner/a/m;->ebE:Ljava/lang/String;

    .line 462
    iput-object p2, p0, Lcom/tencent/mm/plugin/scanner/a/m;->ebF:Ljava/lang/String;

    .line 463
    return-void
.end method


# virtual methods
.method public final aaa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/m;->ebE:Ljava/lang/String;

    return-object v0
.end method

.method public final aab()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/tencent/mm/plugin/scanner/a/m;->ebF:Ljava/lang/String;

    return-object v0
.end method
