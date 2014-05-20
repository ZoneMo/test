.class Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJava$ICursorDataItemCreator;


# instance fields
.field final synthetic this$0:Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper;


# direct methods
.method constructor <init>(Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper$1;->this$0:Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createItem()Linfo/guardianproject/database/CursorDataItem;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper$1;->this$0:Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper;

    invoke-virtual {v0}, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper;->createCursorItem()Linfo/guardianproject/database/CursorDataItem;

    move-result-object v0

    return-object v0
.end method

.method public rebulidAllChangeData(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper$1;->this$0:Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper;

    invoke-virtual {v0, p1}, Linfo/guardianproject/database/sqlcipher/SQLiteCursorInJavaWrapper;->rebulidAllChangeData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
